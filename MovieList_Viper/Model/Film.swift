//
//  Film.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

enum FilmRating: Int {
  case G = 0
  case PG
  case PG13
  case R
  case NC17
}

class Film {
  var filmRating: FilmRating = .G
  var languages: [String] = []
  var releaseDate: Date?
  var cast: [Actor] = []
  var name = ""
  var rating: Float = 0
  var director: Director?
  var nominated = false
  
  init(with data: [String: Any]) {
    if let rating = data["filmRating"] as? Int,
      let filmRating = FilmRating.init(rawValue: rating) {
      self.filmRating = filmRating
    }
    if let releaseDate = data["releaseDate"] as? Date {
      self.releaseDate = releaseDate
    }
    if let name = data["name"] as? String {
      self.name = name
    }
    if let rating = data["rating"] as? Float {
      self.rating = rating
    }
    if let cast = data["cast"] as? [[String: Any]] {
      for actor in cast {
        if let newActor = Actor(data: actor) {
          self.cast.append(newActor)
        }
      }
    }
    if let directorData = data["director"] as? [String: Any],
      let director = Director(data: directorData) {
      self.director = director
    }
    if let nominated = data["nominated"] as? Bool {
      self.nominated = nominated
    }
  }
}
