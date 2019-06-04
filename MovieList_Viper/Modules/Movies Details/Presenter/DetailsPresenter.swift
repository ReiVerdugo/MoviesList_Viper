//
//  DetailsPresenter.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

class DetailsPresenter {
  
  weak var view: DetailsViewInput!
  var film: Film?
}

// MARK: - DetailsViewOutput
extension DetailsPresenter: DetailsViewOutput {
  
  
  func viewIsReady() {
    view.setupView()
    if let directorName = film?.director?.name {
      view.addLabel(with: "Director Name")
      view.addLabel(with: directorName)
    }
    view.setupButton(with: "Tap here to show more")
  }
  
  func showMoreTapped() {
    guard let cast = film?.cast else { return }
    // TODO: Handle scrolling when there are many actors in cast
    for actor in cast {
      if !actor.name.isEmpty {
        view.addLabel(with: "Actor Name")
        view.addLabel(with: actor.name)
      }
      if !actor.screenName.isEmpty {
        view.addLabel(with: "Actor Screen Name")
        view.addLabel(with: actor.screenName)
      }
    }
  }
}
