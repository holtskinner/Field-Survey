//
//  ObservationDetailViewController.swift
//  Field Survey
//
//  Created by Holt Skinner on 11/1/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ObservationDetailViewController: UIViewController {

    var observation: Observation?
    
    var dateFormatter = DateFormatter()

    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {

        super.viewDidLoad()

        self.title = "Observation"

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        classificationIconImageView.image = observation?.classification.image
        titleLabel.text = observation?.title

        if let date = observation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }

        descriptionLabel.text = observation?.description

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
