//
//  TodoDetailInteractor.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class TodoDetailInteractor : PresenterToInteractorTodoDetailProtocol {
    let db:FMDatabase?
    
    init(){
        let destinationRoad = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let placeToCopy = URL(fileURLWithPath: destinationRoad).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: placeToCopy.path)
    }
    
    func updateTodo(todo_id: Int, add_todo: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE todos SET  add_todo = ? WHERE todo_id = ?", values: [add_todo,todo_id])
            
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    
}
