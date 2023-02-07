//
//  HomepagePresenter.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class HomepagePresenter : ViewToPresenterHomepageProtocol {
    var homepageInteractor: PresenterToInteractorHomepageProtocol?
    
    var homepageView: PresenterToViewHomepageProtocol?
    
    func uploadTodos() {
        homepageInteractor?.getAllTodos()
    }
    
    func search(searchWord: String) {
        homepageInteractor?.searchTodo(searchWord: searchWord)
    }
    
    func delete(todo_id: Int) {
        homepageInteractor?.deleteTodo(todo_id: todo_id)
    }
    
    
}


extension HomepagePresenter : InteractorToPresenterHomepageProtocol {
    func sendDataPresenter(todosList: Array<Todos>) {
        homepageView?.sendDataView(todosList: todosList)
    }
    
    
}
