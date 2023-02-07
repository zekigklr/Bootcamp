//
//  TodoDetailRouter.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class TodoDetailRouter : PresenterToRouterTodoDetailProtocol {
    static func createModule(ref: Detailpage) {
        ref.todoDetailPresenterObject = TodoDetailPresenter()
        ref.todoDetailPresenterObject?.todoDetailInteractor = TodoDetailInteractor()
    }
    
    
}
