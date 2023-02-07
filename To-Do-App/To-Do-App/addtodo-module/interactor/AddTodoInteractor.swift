//
//  AddTodoInteractor.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class AddTodoInteractor : PresenterToInteractorAddTodoProtocol {
    let db:FMDatabase?
    
    init(){
        let destinationRoad = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let placeToCopy = URL(fileURLWithPath: destinationRoad).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: placeToCopy.path)
    }
    
    func addTodo(add_todo: String) {
        db?.open()
        do{
            try db!.executeUpdate("INSERT INTO todos (add_todo) VALUES (?)", values: [add_todo])
        }
        catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
}
