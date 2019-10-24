//
//  Application.swift
//  XcodeGen-vs-Local-Swift-Packages
//
//  Created by Vlad Gorlov on 24.10.19.
//  Copyright © 2019 Microcoding. All rights reserved.
//

import UIKit

public class Application: UIApplication {
   private lazy var mainWindow = UIWindow(frame: UIScreen.main.bounds)

   override init() {
      super.init()
      delegate = self
   }
}

extension Application: UIApplicationDelegate {
   public func application(_: UIApplication,
                           didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
      mainWindow.rootViewController = UINavigationController(rootViewController: MainViewController())
      mainWindow.makeKeyAndVisible()
      return true
   }
}
