//
//  Challenge.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import Foundation

struct Challenge {
    
    var title: String
    var description: String
    var situation: String
    
    init(title: String, description: String, situation: String) {
        self.title = title
        self.description = description
        self.situation = situation
    }
}
