//
//  MoviesListPresenter.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MoviesListPresenter {
  var view: MoviesListViewInput!
  var router: MoviesListRouterInput!
  var interactor: MoviesListInteractorInput!
}

extension MoviesListPresenter: MoviesListViewOutput {
  func didTriggerViewReady() {
    view.setupInitialState()
    view.setupView()
  }
  
  func getData() {
    interactor.fetchData()
  }
  
  func showMovieDetail(on navController: UINavigationController, data: Any) {
    router.pushToDetailVC(on: navController, data: data)
  }
}

extension MoviesListPresenter: MoviesListInteractorOutput {
  func fetchedData(data: [Any]) {
    view.showData(data: data)
  }
}
