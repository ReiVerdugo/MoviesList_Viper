//
//  Actor.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

class Actor: GenericRole {
  var screenName = ""
  
  override init?(data: [String : Any]) {
    super.init(data: data)
    if let screenName = data["screenName"] as? String {
      self.screenName = screenName
    }
  }
}
