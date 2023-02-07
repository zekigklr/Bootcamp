//
//  TodoDetailProtocols.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

protocol ViewToPresenterTodoDetailProtocol {
    var todoDetailInteractor:PresenterToInteractorTodoDetailProtocol? {get set}
    
    func update(todo_id:Int,add_todo:String)
}

protocol PresenterToInteractorTodoDetailProtocol {
    func updateTodo(todo_id:Int,add_todo:String)
}

protocol PresenterToRouterTodoDetailProtocol {
    static func createModule(ref:Detailpage)
}
