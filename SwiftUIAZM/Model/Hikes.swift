//
//  Hikes.swift
//  SwiftUIAZM
//
//  Created by MD Tanvir Alam on 5/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import Foundation

struct Hike {
    var name: String
    var imageURL : String
    var miles : Double
}

extension Hike {
    static func all()-> [Hike] {
        return [
            Hike(name: "Fisheries", imageURL: "tanvir", miles: 2.3),
            Hike(name: "Riverbank", imageURL: "tanvirgeek", miles: 2.5),
            Hike(name: "Ashek Mahmood College", imageURL: "diamond", miles: 5.8)
        ]
    }
}
