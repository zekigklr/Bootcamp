//
//  HomepageRouter.swift
//  To-Do-App
//
//  Created by Zeki Gökler on 7.02.2023.
//

import Foundation

class HomepageRouter : PresenterToRouterHomepageProtocol{
    static func createModule(ref: Homepage) {
        let presenter = HomepagePresenter()
        
        ref.homepagePresenterObject = presenter
        
        ref.homepagePresenterObject?.homepageInteractor = HomepageInteractor()
        ref.homepagePresenterObject?.homepageView = ref
        
        ref.homepagePresenterObject?.homepageInteractor?.homepagePresenter = presenter
    }
}
