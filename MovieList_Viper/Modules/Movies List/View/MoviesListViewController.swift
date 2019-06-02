//
//  MoviesListViewController.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  var output: MoviesListViewOutput!
  var films: [Film] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    output.didTriggerViewReady()
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
  
  func showData(data: [Any]) {
    DispatchQueue.main.async {
      guard let data = data as? [Film] else { return }
      self.films = data
      self.tableView.reloadData()
    }
  }
}
