//
//  MoviesListBuilder.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MoviesListBuilder {
  func build() -> MoviesListViewController {
    let viewController = UIStoryboard.init(name: "Main", bundle: nil)
      .instantiateInitialViewController() as! MoviesListViewController
    
    let router = MoviesListRouter()
    router.viewController = viewController
    
    let presenter = MoviesListPresenter()
    presenter.view = viewController
    presenter.router = router
    
    let interactor = MoviesListInteractor()
    interactor.output = presenter
    presenter.interactor = interactor
    viewController.output = presenter
    
    return viewController
  }
}
