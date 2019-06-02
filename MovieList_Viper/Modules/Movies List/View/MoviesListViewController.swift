//
//  MoviesListViewController.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import Foundation
import UIKit

class MoviesListViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  var output: MoviesListViewOutput!
  var films: [Film] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

extension MoviesListViewController: MoviesListViewInput {
  func setupInitialState() {
    view.backgroundColor = .white
    navigationItem.title = "Movies List"
  }
  
  func setupView() {
    tableView.estimatedRowHeight = 90
    tableView.rowHeight = UITableView.automaticDimension
    tableView.delegate = self
    tableView.dataSource = self
    tableView.register(
      UINib(nibName: "MovieCell", bundle: nil),
      forCellReuseIdentifier: "MovieCell")
  }
  
  func showData(data: Array<Any>) {
    DispatchQueue.main.async {
      guard let data = data as? [Film] else { return }
      self.films = data
      self.tableView.reloadData()
    }
  }
}

extension MoviesListViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return films.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
    let film = films[indexPath.row]
    cell.configure(with: film)
    return cell
  }
}

extension MoviesListViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
  }
}
