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
  
  var output: MockOutput!
  var viewController: DetailsViewController!
  
  override func setUp() {
    super.setUp()
    
    output = MockOutput()
    
    viewController = DetailsViewController()
    viewController.output = output
  }
  
  override func tearDown() {
    output = nil
    viewController = nil
    
    super.tearDown()
  }
  
  func testThatControllerNotifiesPresenterOnDidLoad() {
    // When
    viewController.viewDidLoad()
    
    // Then
    XCTAssertTrue(output.viewIsReadyDidCall)
  }
  
  func testThatControllerNotifiesPresenterOnLabelTapped() {
    // Given
    viewController.setupButton(with: "")
    
    // When
    viewController.showMoreTapped()
    
    // Then
    XCTAssertTrue(output.showMoreTappedDidCall)
  }
  
  // MARK: - Mock
  
  class MockOutput: DetailsViewOutput {
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
