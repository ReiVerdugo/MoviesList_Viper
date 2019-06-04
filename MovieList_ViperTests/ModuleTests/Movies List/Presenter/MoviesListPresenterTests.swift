//
//  MoviesListPresenterTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class MoviesListPresenterTests: XCTestCase {
  var presenter: MoviesListPresenter!
  var mockInteractor: MockInteractor!
  var mockRouter: MockRouter!
  var mockView: MockView!
  
  override func setUp() {
    presenter = MoviesListPresenter()
    mockInteractor = MockInteractor()
    mockRouter = MockRouter()
    mockView = MockView()
    presenter.interactor = mockInteractor
    presenter.router = mockRouter
    presenter.view = mockView
  }

  override func tearDown() {
    presenter = nil
    
    mockView = nil
    mockRouter = nil
    mockInteractor = nil
    super.tearDown()
  }
  
  func testThatPresenterHandlesViewReadyEvent() {
    // When
    presenter.didTriggerViewReady()
    
    // Then
    XCTAssertTrue(mockView.setupViewCalled)
    XCTAssertTrue(mockView.setupInitialStateCalled)
  }
  
  func testThatViewShowsDataAfterFetching() {
    // When
    presenter.fetchedData(data: [])
    
    // Then
    XCTAssertTrue(mockView.showDataCalled)
  }
  
  func testThatInteractorFetchesDataWhenRequested() {
    // When
    presenter.getData()
    
    // Then
     XCTAssertTrue(mockInteractor.fetchDataCalled)
  }
  
  func testThatRouterNavigatesWhenShowingDetail() {
    // When
    presenter.showMovieDetail(on: UINavigationController(), data: Data())
    
    // Then
    XCTAssertTrue(mockRouter.pushToDetailCalled)
  }
}

class MockInteractor: MoviesListInteractorInput {
  var fetchDataCalled = false
  func fetchData() {
    fetchDataCalled = true
  }
}

class MockRouter: MoviesListRouterInput {
  var pushToDetailCalled = false
  func pushToDetailVC(on navigationController: UINavigationController, data: Any) {
    pushToDetailCalled = true
  }
}

class MockView: MoviesListViewInput {
  var setupInitialStateCalled = false
  func setupInitialState() {
    setupInitialStateCalled = true
  }
  
  var setupViewCalled = false
  func setupView() {
    setupViewCalled = true
  }
  
  var showDataCalled = false
  func showData(data: [Any]) {
    showDataCalled = true
  }
}
