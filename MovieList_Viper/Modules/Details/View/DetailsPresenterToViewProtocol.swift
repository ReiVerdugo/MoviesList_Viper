//
//  DetailsViewInput.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

protocol DetailsPresenterToViewProtocol: class {
  func setupView()
  func addLabel(with text: String)
  func setupButton(with text: String)
  func hideButton()
}
