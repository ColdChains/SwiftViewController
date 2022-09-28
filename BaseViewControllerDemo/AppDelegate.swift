//
//  AppDelegate.swift
//  BaseViewControllerDemo
//
//  Created by lax on 2022/9/7.
//

import UIKit
import BaseViewController

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        BaseConfig.shared.backgroundColor = .green
        BaseConfig.shared.logEnabled = true
        return true
    }

}

