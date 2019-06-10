//
//  DetailsViewTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class DetailsViewTests: XCTestCase {
  
  var presenter: MockViewToPresenter!
  var viewController: DetailsViewController!
  
  override func setUp() {
    super.setUp()
    
    presenter = MockViewToPresenter()
    
    viewController = DetailsViewController()
    viewController.output = presenter
  }
  
  override func tearDown() {
    presenter = nil
    viewController = nil
    
    super.tearDown()
  }
  
  func testThatControllerNotifiesPresenterOnDidLoad() {
    // When
    viewController.viewDidLoad()
    
    // Then
    XCTAssertTrue(presenter.viewIsReadyDidCall)
  }
  
  func testThatControllerNotifiesPresenterOnLabelTapped() {
    // Given
    viewController.setupButton(with: "")
    
    // When
    viewController.showMoreTapped()
    
    // Then
    XCTAssertTrue(presenter.showMoreTappedDidCall)
  }
  
  // MARK: - Mock
  
  class MockViewToPresenter: DetailsViewToPresenterProtocol {
    var showMoreTappedDidCall = false
    func showMoreTapped() {
      showMoreTappedDidCall = true
    }
    
    var viewIsReadyDidCall = false
    func viewIsReady() {
      viewIsReadyDidCall = true
    }
  }
}
