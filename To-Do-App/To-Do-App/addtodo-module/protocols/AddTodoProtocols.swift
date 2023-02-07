//
//  AddTodoProtocols.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

protocol ViewToPresenterAddTodoProtocol {
    var addTodoInteractor:PresenterToInteractorAddTodoProtocol? {get set}
    
    func add(add_todo:String)
}

protocol PresenterToInteractorAddTodoProtocol {
    func addTodo(add_todo:String)
}

protocol PresenterToRouterAddTodoProtocol {
    static func createModule(ref:Registrationpage)
}
