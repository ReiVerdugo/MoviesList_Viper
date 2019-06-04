//
//  DataLoader.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

class DataLoader {
  class func loadJson(fromFile fileName: String) -> [String: Any]? {
    guard let path = Bundle(for: self)
      .path(forResource: fileName, ofType: "json"),
      let data = NSData.init(contentsOfFile: path) else { return nil }
    return try! JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments) as? [String: Any]
  }
}
