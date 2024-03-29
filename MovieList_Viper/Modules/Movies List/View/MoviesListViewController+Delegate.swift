//
//  MoviesListViewController+Delegate.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

extension MoviesListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let navigationController = navigationController else { return }
    let film = films[indexPath.row]
    presenter.showMovieDetail(on: navigationController, data: film)
  }
}
