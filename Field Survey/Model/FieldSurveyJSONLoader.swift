//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Holt Skinner on 11/1/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {

    class func load(fileName: String) -> [Observation] {

        var observations = [Observation]()

        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            observations = FieldSurveyJSONParser.parse(data)
        }

        return observations

    }

}
