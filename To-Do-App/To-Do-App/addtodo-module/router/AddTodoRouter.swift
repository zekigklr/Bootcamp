//
//  AddTodoRouter.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class AddTodoRouter : PresenterToRouterAddTodoProtocol {
    static func createModule(ref: Registrationpage) {
        ref.addTodoPresenterObject = AddTodoPresenter()
        ref.addTodoPresenterObject?.addTodoInteractor = AddTodoInteractor()
    }
}
