//
//  DateFormatterHelper.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/3/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation

protocol DateFormatterHelperProtocol: class {
  static func getString(from date: Date, using format: String) -> String
}

class DateFormatterHelper: DateFormatterHelperProtocol {
  class func getString(from date: Date, using format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
  }
}
