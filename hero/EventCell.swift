//
//  EventCell.swift
//  hero
//
//  Created by JasonZheng on 7/27/19.
//  Copyright © 2019 JasonZheng. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {
	@IBOutlet weak var iconView: UIImageView!
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var initiatorNameLabel: UILabel!
	@IBOutlet weak var locationLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
		self.selectionStyle = .gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

	func configure(for event: Event) {
		if let img = UIImage(named: event.icon) {
			iconView.image = img
		} else {
			iconView.image = UIImage(named: "Placeholder")
		}
		titleLabel.text = event.title
		initiatorNameLabel.text = event.org
		locationLabel.text = event.address
	}
}
