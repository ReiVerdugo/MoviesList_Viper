//
//  AppDelegate.swift
//  MovieList_Viper
//
//  Created by Reinaldo Verdugo on 6/2/19.
//  Copyright © 2019 DMI. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let builder = MoviesListBuilder()
    let controller = builder.build()
    let navigationController = UINavigationController()
    navigationController.viewControllers = [controller]
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
    return true
  }

}

