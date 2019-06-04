//
//  MoviesListInteractorTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class MoviesListInteractorTests: XCTestCase {
  var interactor: MoviesListInteractor!
  var mockOutput: MockPresenterOutput!

  override func setUp() {
    super.setUp()
    interactor = MoviesListInteractor()
    mockOutput = MockPresenterOutput()
    interactor.output = mockOutput
  }

  override func tearDown() {
    interactor = nil
    mockOutput = nil
    super.tearDown()
  }

  func testThatPresenterFetchedDataFromInteractor() {
    // When
    interactor.fetchData()
    
    // Then
    // Todo: stub fetchdata method and use expectation
    sleep(1)
    XCTAssertTrue(mockOutput.fetchedDataCalled)
  }

}

class MockPresenterOutput: MoviesListInteractorOutput {
  var fetchedDataCalled = false
  func fetchedData(data: [Any]) {
    fetchedDataCalled = true
  }
}
