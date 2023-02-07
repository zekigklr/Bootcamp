//
//  ViewController.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 3.02.2023.
//

import UIKit

class Homepage: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var todosTableView: UITableView!
    
    var todosList = [Todos]()
    
    var homepagePresenterObject: ViewToPresenterHomepageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        todosTableView.delegate = self
        todosTableView.dataSource = self
        
        databaseCopy()
        
        HomepageRouter.createModule(ref: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        homepagePresenterObject?.uploadTodos()
    }
    
    func databaseCopy() {
        let bundlePath = Bundle.main.path(forResource: "todo", ofType: ".sqlite")
        let destinationRoad = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let fileManager = FileManager.default
        let placeToCopy = URL(fileURLWithPath: destinationRoad).appendingPathComponent("todo.sqlite")
        if fileManager.fileExists(atPath: placeToCopy.path){
            print("Database already exists")
        }else {
            do{
                try fileManager.copyItem(atPath: bundlePath!, toPath: placeToCopy.path)
            }catch{
                
            }
        }
    }

}

extension Homepage : PresenterToViewHomepageProtocol {
    func sendDataView(todosList: Array<Todos>) {
        self.todosList = todosList
        self.todosTableView.reloadData()
    }
    
    
}

extension Homepage : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        homepagePresenterObject?.search(searchWord: searchText)
    }
}


extension Homepage : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todosList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todosList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "todosCell", for: indexPath) as! TableViewCell
        
        cell.todoInfo.text = "\(todo.add_todo!)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = todosList[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: todo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let todo = sender as? Todos
            let gotoVC = segue.destination as! Detailpage
            gotoVC.todo = todo
        }
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let todo = todosList[indexPath.row]
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){(contextualAction,view,bool) in
            let alert = UIAlertController(title: "Deletion process ", message: "\(todo.add_todo!) delete? ", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in }
            let yesAction = UIAlertAction(title: "Yes", style: .destructive){ action in
                self.homepagePresenterObject?.delete(todo_id: todo.todo_id!)
            }
                alert.addAction(cancelAction)
                alert.addAction(yesAction)
            self.present(alert, animated: true)
                
            
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}
