//
//  MoviesListViewOutput.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

protocol MoviesListViewToPresenterProtocol: class {
  func didTriggerViewReady()
  func showMovieDetail(on navController: UINavigationController, data: Any)
}
