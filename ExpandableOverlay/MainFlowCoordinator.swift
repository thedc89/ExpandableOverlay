//
//  MainFlowCoordinator.swift
//  ExpandableOverlay
//
//  Created by Dawid Cedrych on 6/18/19.
//  Copyright © 2019 Altalogy. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
	func configure(viewController: UIViewController)
}

protocol MainCoordinated: AnyObject {
	var mainCoordinator: MainFlowCoordinator? { get set }
}

protocol Stateful: AnyObject {
	var stateController: StateController? { get set }
}


class MainFlowCoordinator: NSObject {
	let stateController = StateController()
	let rootViewController: RootViewController

	
	init(mainViewController: RootViewController) {
		self.rootViewController = mainViewController
		super.init()
		configure(viewController: mainViewController)
	}
	
	//Here you will pass viewModel as parameter, "info" String now for the exemplary purpose
	func viewController(_ viewController: UINavigationController, didSelect info: String) {
		if let vs = viewController.visibleViewController as? ThirdViewController { // a mechanism to prevent pushing the same view controllers
			if vs.info == info {
				return
			}
		}
		let vc = ThirdViewController()
		vc.info = info
		viewController.pushViewController(vc, animated: true)
	}
}

extension MainFlowCoordinator: Coordinator {
	func configure(viewController: UIViewController) {
		(viewController as? MainCoordinated)?.mainCoordinator = self
		(viewController as? Stateful)?.stateController = stateController
		if let tabBarController = viewController as? UITabBarController {
			tabBarController.viewControllers?.forEach(configure(viewController:))
		}
		if let navigationController = viewController as? UINavigationController,
			let rootViewController = navigationController.viewControllers.first {
			configure(viewController: rootViewController)
		}
	}
}
