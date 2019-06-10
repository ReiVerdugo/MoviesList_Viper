//
//  MoviesListViewControllerTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class MoviesListViewControllerTests: XCTestCase {
  var controller: MoviesListViewController!
  var presenter: MockViewToPresenter!
  
  override func setUp() {
    super.setUp()
    controller = MoviesListViewController()
    presenter = MockViewToPresenter()
    controller.presenter = presenter
  }

  override func tearDown() {
    controller = nil
    presenter = nil
    super.tearDown()
  }
  
  func testThatControllerNotifiesPresenterOnDidLoad() {
    // When
    controller.viewDidLoad()
    
    // Then
    XCTAssertTrue(presenter.didTriggerViewReadyCalled)
  }
}

class MockViewToPresenter: MoviesListViewToPresenterProtocol {
  
  var didTriggerViewReadyCalled = false
  func didTriggerViewReady() {
    didTriggerViewReadyCalled = true
  }
  
  var showMovieDetail = false
  func showMovieDetail(on navController: UINavigationController, data: Any) {
    showMovieDetail = true
  }
}
