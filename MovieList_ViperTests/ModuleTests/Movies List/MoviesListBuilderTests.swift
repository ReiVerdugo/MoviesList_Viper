//
//  MoviesListBuilderTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class MoviesListBuilderTests: XCTestCase {

  func testBuild() {
    // Given
    let builder = MoviesListBuilder()
    
    // When
    let viewController = builder.build()
    
    // Then
    XCTAssertNotNil(viewController.presenter)
    XCTAssertTrue(viewController.presenter is MoviesListPresenter)
    
    let presenter = viewController.presenter as! MoviesListPresenter
    XCTAssertNotNil(presenter.view)
    XCTAssertNotNil(presenter.router)
    XCTAssertTrue(presenter.router is MoviesListRouter)
    
    let interactor = presenter.interactor as! MoviesListInteractor
    XCTAssertNotNil(interactor.output)
  }
  
  
}
