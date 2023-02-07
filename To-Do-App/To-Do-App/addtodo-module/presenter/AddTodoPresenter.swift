//
//  AddTodoPresenter.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class AddTodoPresenter : ViewToPresenterAddTodoProtocol {
    var addTodoInteractor: PresenterToInteractorAddTodoProtocol?
    
    func add(add_todo: String) {
        addTodoInteractor?.addTodo(add_todo: add_todo)
    }
}
