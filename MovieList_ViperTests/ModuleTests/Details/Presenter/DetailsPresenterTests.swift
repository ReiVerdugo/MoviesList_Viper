//
//  DetailsPresenterTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class DetailsPresenterTests: XCTestCase {
  var presenter: DetailsPresenter!
  var view: MockView!
  
  override func setUp() {
    super.setUp()
    view = MockView()
    
    presenter = DetailsPresenter()
    presenter.view = view
  }
  
  override func tearDown() {
    view = nil
    presenter = nil
    
    super.tearDown()
  }
  
  func testThatPresenterHandlesViewReadyEvent() {
    // When
    presenter.viewIsReady()
    
    // Then
    XCTAssertTrue(view.setupViewDidCalled)
  }
  
  func testThatViewAddsTwoLabelsWhenThereIsDirector() {
    // Given
    let dictionary = DataLoader.loadJson(fromFile: "Films")
    guard let filmJSON = (dictionary?["films"] as? [[String: Any]])?.first
      else { return }
    let film = Film(with: filmJSON)
    presenter.film = film
    
    // When
    presenter.viewIsReady()
    
    // Then
    XCTAssertTrue(view.addLabelDidCalled)
    XCTAssertEqual(view.numberOfTimesAddLabelWasCalled, 2)
  }
  
  func testThatViewSetsUpTappableLabelOnReadyEvent() {
    // When
    presenter.viewIsReady()
    
    // Then
    XCTAssertTrue(view.setupButtonDidCalled)
  }
  
  func testThatViewAddsFourLabelsWhenThereIsActor() {
    // Given
    let dictionary = DataLoader.loadJson(fromFile: "Films")
    guard let filmJSON = (dictionary?["films"] as? [[String: Any]])?.first
      else { return }
    let film = Film(with: filmJSON)
    presenter.film = film
    
    // When
    presenter.showMoreTapped()
    
    // Then
    XCTAssertTrue(view.addLabelDidCalled)
    XCTAssertEqual(view.numberOfTimesAddLabelWasCalled, 4)
    XCTAssertTrue(view.hideButtonDidCalled)
  }
  
  // MARK: - Mock
  
  class MockView: DetailsPresenterToViewProtocol {
    var hideButtonDidCalled = false
    func hideButton() {
      hideButtonDidCalled = true
    }
    
    var setupViewDidCalled = false
    func setupView() {
      setupViewDidCalled = true
    }
    
    var addLabelDidCalled = false
    var numberOfTimesAddLabelWasCalled = 0
    func addLabel(with text: String) {
      addLabelDidCalled = true
      numberOfTimesAddLabelWasCalled += 1
    }
    
    var setupButtonDidCalled = false
    func setupButton(with text: String) {
      setupButtonDidCalled = true
    }
  }
  
}
