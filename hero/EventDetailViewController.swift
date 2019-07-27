//
//  EventDetailViewController.swift
//  hero
//
//  Created by JasonZheng on 7/27/19.
//  Copyright © 2019 JasonZheng. All rights reserved.
//

import UIKit

class EventDetailViewController: UITableViewController {
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var initiatorNameLabel: UILabel!
	@IBOutlet weak var descriptionLable: UILabel!

	override func viewDidLoad() {
        super.viewDidLoad()
		setup()
    }


	func setup() {
		let event = currentEvent!
		if let img = UIImage(named: event.icon) {
			imageView.image = img
		} else {
			imageView.image = UIImage(named: "Placeholder")
		}
		titleLabel.text = event.title
		initiatorNameLabel.text = event.org
		descriptionLable.text = event.description
	}

	@IBAction func donateBtnTaped(_ sender: UIButton) {
		let event = currentEvent!
		print(event.org_link)
		if let url = URL(string: event.org_link) {
			UIApplication.shared.open(url)
		}

	}

}
