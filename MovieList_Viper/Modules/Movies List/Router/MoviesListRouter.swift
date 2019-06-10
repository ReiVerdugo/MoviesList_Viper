//
//  MoviesListRouter.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MoviesListRouter {}

extension MoviesListRouter: MoviesListPresenterToRouterProtocol {
  func pushToDetailVC(on navigationController: UINavigationController, data: Any) {
    let detailsVC = DetailsModuleBuilder.build(with: data)
    navigationController.pushViewController(detailsVC, animated: true)
  }
}
