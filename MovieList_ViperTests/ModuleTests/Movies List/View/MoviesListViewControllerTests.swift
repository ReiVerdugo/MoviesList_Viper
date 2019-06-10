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
  var mockOutput: MockOutput!
  
  override func setUp() {
    super.setUp()
    controller = MoviesListViewController()
    mockOutput = MockOutput()
    controller.presenter = mockOutput
  }

  override func tearDown() {
    controller = nil
    mockOutput = nil
    super.tearDown()
  }
  
  func testThatControllerNotifiesPresenterOnDidLoad() {
    // When
    controller.viewDidLoad()
    
    // Then
    XCTAssertTrue(mockOutput.didTriggerViewReadyCalled)
  }
}

class MockOutput: MoviesListViewToPresenterProtocol {
  
  var didTriggerViewReadyCalled = false
  func didTriggerViewReady() {
    didTriggerViewReadyCalled = true
  }
  
  var showMovieDetail = false
  func showMovieDetail(on navController: UINavigationController, data: Any) {
    showMovieDetail = true
  }
}
