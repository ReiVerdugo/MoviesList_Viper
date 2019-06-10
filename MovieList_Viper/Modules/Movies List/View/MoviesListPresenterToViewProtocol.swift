//
//  MoviesListViewInput.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

protocol MoviesListPresenterToViewProtocol: class {
  func setupInitialState()
  func setupView()
  func showData(data: [Any])
}
