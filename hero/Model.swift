//
//  Model.swift
//  hero
//
//  Created by JasonZheng on 7/27/19.
//  Copyright © 2019 JasonZheng. All rights reserved.
//

import Foundation
import UIKit

var events: [Event] = []

struct Event: Codable{
	var icon: String
	let title: String
	let org: String
	let description: String
	let address: String
	struct funding: Codable {
		var name: String
		var target: Int
		var raised: Int
	}
	let fundings: [funding]
	let org_link:String
	//	var largeImage: String
}


func loadDemoData(){
	if let path = Bundle.main.path(forResource: "fakeData", ofType: "json") {
		do {
			let jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)

			let decoder = JSONDecoder()
			do {
				events = try decoder.decode([Event].self, from: jsonData)
			} catch {
				print(error.localizedDescription)
			}
		} catch {
			print("Failed to load: \(error.localizedDescription)")
		}
	}
}
