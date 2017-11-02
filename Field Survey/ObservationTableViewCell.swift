//
//  ObservationTableViewCell.swift
//  Field Survey
//
//  Created by Holt Skinner on 11/1/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ObservationTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var classificationIconImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
