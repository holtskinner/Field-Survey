//
//  Classification.swift
//  Field Survey
//
//  Created by Holt Skinner on 10/31/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

enum Classification: String {

    case bird
    case anphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal

    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }

}
