//
//  HomepageInteractor.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class HomepageInteractor : PresenterToInteractorHomepageProtocol {
    var homepagePresenter: InteractorToPresenterHomepageProtocol?
    
    let db:FMDatabase?
    
    init(){
        let destinationRoad = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let placeToCopy = URL(fileURLWithPath: destinationRoad).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: placeToCopy.path)
    }
    
    
    func getAllTodos() {
        var list = [Todos]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM todos", values: nil)
            
            while rs.next() {
                let todo = Todos(todo_id: Int(rs.string(forColumn: "todo_id"))!,
                                 add_todo: rs.string(forColumn: "add_todo")!)
                list.append(todo)
            }
            
            homepagePresenter?.sendDataPresenter(todosList: list)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
        
        
        
    }
    
    func searchTodo(searchWord: String) {
        var list = [Todos]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM todos WHERE add_todo like '%\(searchWord)%'", values: nil)
            
            while rs.next() {
                let todo = Todos(todo_id: Int(rs.string(forColumn: "todo_id"))!,
                                 add_todo: rs.string(forColumn: "add_todo")!)
                list.append(todo)
            }
            
            homepagePresenter?.sendDataPresenter(todosList: list)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
        
    }
    
    func deleteTodo(todo_id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM todos WHERE todo_id = ?", values: [todo_id])
            getAllTodos()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    
}
