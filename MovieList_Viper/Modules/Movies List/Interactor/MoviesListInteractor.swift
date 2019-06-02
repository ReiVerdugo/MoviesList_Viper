//
//  MoviesListInteractor.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

class MoviesListInteractor {
  var output: MoviesListInteractorOutput!
}

extension MoviesListInteractor: MoviesListInteractorInput {
  func fetchData() {
    fetchFilms { [weak self] films in
      guard let strongSelf = self else { return }
      strongSelf.output.fetchedData(data: films)
    }
  }
}

private extension MoviesListInteractor {
  func fetchFilms(completion: @escaping ([Any]) -> ()) {
    DispatchQueue.global().async {
      guard let json = DataLoader.loadJsonFromFile(fileName: "Films"),
      let filmDictionary = json["films"] as? [[String: Any]] else { return }
      var films: [Film] = []
      for dictionary in filmDictionary {
        let film = Film(with: dictionary)
        films.append(film)
      }
      completion(films)
    }
  }
}
