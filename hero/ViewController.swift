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
		test_Alamofire()
	}
	func test_Alamofire() {
		AF.request("https://api.crossref.org/works/10.1037/0003-066X.59.1.29/agency").responseJSON { response in
			print("Request: \(String(describing: response.request))")   // original url request
			print()
			print("Response: \(String(describing: response.response))") // http url response
			print()
			print("Result: \(response.result)")                         // response serialization result


			if let json = response.result.value {
				print("JSON: \(json)") // serialized json response
			}

//			if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
//				print("Data: \(utf8Text)") // original server data as UTF8 string
//			}
		}
	}
}

