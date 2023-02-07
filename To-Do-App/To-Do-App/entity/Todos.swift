//
//  Todos.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 6.02.2023.
//

import Foundation

class Todos {
    var todo_id:Int?
    var add_todo:String?
    
    init(todo_id: Int, add_todo: String) {
        self.todo_id = todo_id
        self.add_todo = add_todo
    }
}
