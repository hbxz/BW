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
//		if UIDevice.current.userInterfaceIdiom != .pad {
//			searchBar.becomeFirstResponder()
//		}
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
	/*
	// Uncomment this method to specify if the specified item should be highlighted during tracking
	override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
	return true
	}
	*/

	/*
	// Uncomment this method to specify if the specified item should be selected
	override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
	return true
	}
	*/

	/*
	// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
	override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
	return false
	}

	override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
	return false
	}

	override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {

	}
	*/


}
