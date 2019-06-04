//
//  MovieCell.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var filmRatingLabel: UILabel!
  @IBOutlet weak var ratingLabel: UILabel!
  
  func configure(with film: Film) {
    nameLabel.text = film.name
    ratingLabel.text = "\(film.rating)"
    if let date = film.releaseDate {
      dateLabel.text = DateFormatterHelper
        .getString(from: date, using: "dd MMM yyyy")
    }
    if let filmRating = film.filmRating {
      filmRatingLabel.text = filmRating.rawValue
    }
    selectionStyle = .none
  }
}
