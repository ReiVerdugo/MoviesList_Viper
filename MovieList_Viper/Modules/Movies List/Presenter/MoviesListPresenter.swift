//
//  MoviesListPresenter.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MoviesListPresenter {
  weak var view: MoviesListPresenterToViewProtocol!
  var router: MoviesListPresenterToRouterProtocol!
  var interactor: MoviesListPresenterToInteractorProtocol!
}

extension MoviesListPresenter: MoviesListViewToPresenterProtocol {
  func didTriggerViewReady() {
    view.setupInitialState()
    view.setupView()
    interactor.fetchData()
  }
  
  func showMovieDetail(on navController: UINavigationController, data: Any) {
    router.pushToDetailVC(on: navController, data: data)
  }
}

extension MoviesListPresenter: MoviesListInteractorToPresenterProtocol {
  func fetchedData(data: [Any]) {
    view.showData(data: data)
  }
}
