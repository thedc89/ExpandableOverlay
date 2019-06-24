//
//  AppDelegate.swift
//  ExpandableOverlay
//
//  Created by Dawid Cedrych on 6/18/19.
//  Copyright © 2019 Altalogy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var coordinator: MainFlowCoordinator?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		
		guard let window = window else { return false }
		let rootVC = RootViewController()
		window.rootViewController = rootVC

		// Override point for customization after application launch.
		if let initialViewController = window.rootViewController as? RootViewController {
			coordinator = MainFlowCoordinator(mainViewController: initialViewController)
			
		}
		return true
	}

	func applicationWillResignActive(_ application: UIApplication) {

	}

	func applicationDidEnterBackground(_ application: UIApplication) {

	}

	func applicationWillEnterForeground(_ application: UIApplication) {

	}

	func applicationDidBecomeActive(_ application: UIApplication) {

	}

	func applicationWillTerminate(_ application: UIApplication) {

	}


}

