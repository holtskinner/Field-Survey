//
//  ObservationsViewController.swift
//  Field Survey
//
//  Created by Holt Skinner on 11/1/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ObservationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let observations = FieldSurveyJSONLoader.load(fileName: "field_observations")

    @IBOutlet weak var observationsTableView: UITableView!

    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Field Survey"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "observationCell", for: indexPath)

        if let cell = cell as? ObservationTableViewCell {
            let observation = observations[indexPath.row]
            cell.classificationIconImageView.image = observation.classification.image
            cell.titleLabel.text = observation.title
            cell.dateLabel.text = dateFormatter.string(from: observation.date)
        }

        return cell

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationDetailViewController,
           let row = observationsTableView.indexPathForSelectedRow?.row {
                destination.observation = observations[row]
        }
    }

}
