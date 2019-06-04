//
//  DetailsModuleBuilderTests.swift
//  MovieList_ViperTests
//
//  Created by Reinaldo Verdugo on 6/4/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import XCTest
@testable
import MovieList_Viper

class DetailsModuleBuilderTests: XCTestCase {
  
  func testBuildViewController() {
    
    // Given
    let builder = DetailsModuleBuilder()
    
    // When
    let viewController = builder.build(with: Film(with: [:]))
    
    // Then
    XCTAssertNotNil(viewController.output)
    XCTAssertTrue(viewController.output is DetailsPresenter)
    
    let presenter: DetailsPresenter = viewController.output as! DetailsPresenter
    XCTAssertNotNil(presenter.view)
//    XCTAssertNotNil(presenter.router)
//    XCTAssertTrue(presenter.router is DetailsRouter)
//
//    let interactor: DetailsInteractor = presenter.interactor as! DetailsInteractor
//    XCTAssertNotNil(interactor.output)
//
//    let router: DetailsRouter = presenter.router as! DetailsRouter
//    XCTAssertNotNil(router.viewController)
  }
  
}
