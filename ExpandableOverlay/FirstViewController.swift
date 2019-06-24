//
//  PrimaryViewController.swift
//  ExpandableOverlay
//
//  Created by Dawid Cedrych on 6/18/19.
//  Copyright © 2019 Altalogy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = .yellow
	}
	
	init() {
		super.init(nibName: nil, bundle: nil)
		self.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
