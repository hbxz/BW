//
//  ViewController.swift
//  hero
//
//  Created by JasonZheng on 7/26/19.
//  Copyright © 2019 JasonZheng. All rights reserved.
//

import UIKit
import Alamofire

struct User: Codable {
	let firstName: String
	let lastName: String
	let email: String
	let image: URL
}


class ViewController: UIViewController {

	@IBOutlet weak var sendButton: UIButton!

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	@IBAction func tui(_ sender: Any) {
//		test_Alamofire()
	}
}

