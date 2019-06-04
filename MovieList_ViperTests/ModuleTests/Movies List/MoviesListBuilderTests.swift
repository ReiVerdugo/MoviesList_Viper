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
    XCTAssertNotNil(viewController.output)
    XCTAssertTrue(viewController.output is MoviesListPresenter)
    
    let presenter = viewController.output as! MoviesListPresenter
    XCTAssertNotNil(presenter.view)
    XCTAssertNotNil(presenter.router)
    XCTAssertTrue(presenter.router is MoviesListRouter)
    
    let interactor = presenter.interactor as! MoviesListInteractor
    XCTAssertNotNil(interactor.output)
    
    let router = presenter.router as! MoviesListRouter
    XCTAssertNotNil(router.viewController)
  }
  
  
}
