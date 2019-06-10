//
//  MoviesListRouterInput.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

protocol MoviesListPresenterToRouterProtocol: class {
  func pushToDetailVC(on navigationController: UINavigationController,
                      data: Any)
}
