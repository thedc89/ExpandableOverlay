//
//  SecondaryViewController.swift
//  ExpandableOverlay
//
//  Created by Dawid Cedrych on 6/18/19.
//  Copyright © 2019 Altalogy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = .green
	}
	
	init() {
		super.init(nibName: nil, bundle: nil)
		self.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
