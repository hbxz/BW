//
//  EventBrowserViewController.swift
//  hero
//
//  Created by JasonZheng on 7/27/19.
//  Copyright © 2019 JasonZheng. All rights reserved.
//

import UIKit

private let eventCellID = "EventCell"


class EventBrowserViewController: UIViewController {
	@IBOutlet weak var tableView: UITableView!


	override func viewDidLoad() {
        super.viewDidLoad()

		loadDemoData()

		let cellNib = UINib(nibName: eventCellID, bundle: nil)
		tableView.register(cellNib, forCellReuseIdentifier: eventCellID)
		tableView.rowHeight = 350
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: UICollectionViewDataSource
extension EventBrowserViewController: UITableViewDataSource {


	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return events.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


		let cell = tableView.dequeueReusableCell(
			withIdentifier: eventCellID,
			for: indexPath) as! EventCell

		let event = events[indexPath.row]
		cell.configure(for: event)
		return cell
	}
}

// MARK: UICollectionViewDelegate
extension EventBrowserViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

		currentEvent = events[indexPath.row]
		self.performSegue(withIdentifier: "goDetailPage", sender: tableView)
	}
}
