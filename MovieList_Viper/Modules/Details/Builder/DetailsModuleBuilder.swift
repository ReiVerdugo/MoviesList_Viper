//
//  DetailsModuleBuilder.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

class DetailsModuleBuilder {
  class func build(with data: Any) -> DetailsViewController {
    
    let viewController = DetailsViewController()
    
    let router = DetailsRouter()
    router.viewController = viewController
    
    let presenter = DetailsPresenter()
    presenter.view = viewController
//    presenter.router = router
    
    let interactor = DetailsInteractor()
//    interactor.output = presenter
    
//    presenter.interactor = interactor
    presenter.film = data as? Film
    viewController.output = presenter
    
    return viewController
  }
}
