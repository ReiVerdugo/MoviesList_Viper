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
    
  }
    
}
