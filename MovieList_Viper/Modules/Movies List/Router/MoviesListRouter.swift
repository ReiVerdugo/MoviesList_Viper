//
//  MoviesListRouter.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MoviesListRouter {
  weak var viewController: UIViewController!
}

extension MoviesListRouter: MoviesListRouterInput {
  func pushToDetailVC(on navigationController: UINavigationController, data: Any) {
    let detailsBuilder = DetailsModuleBuilder()
    let detailsVC = detailsBuilder.build(with: data)
    navigationController.pushViewController(detailsVC, animated: true)
  }
}
