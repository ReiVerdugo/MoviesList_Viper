//
//  GenericRole.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

class GenericRole {
  var name: String
  var biography: String
  var dateOfBirth: Date
  var nominated: Bool
  
  init?(data: [String: Any]) {
    guard let name = data["name"] as? String,
      let biography = data["biography"] as? String,
      let dateOfBirthDouble = data["dateOfBirth"] as? Double,
      let nominated = data["nominated"] as? Bool else { return nil }
    let dateOfBirth = Date.init(timeIntervalSince1970: dateOfBirthDouble)
    self.name = name
    self.biography = biography
    self.dateOfBirth = dateOfBirth
    self.nominated = nominated
  }
}
