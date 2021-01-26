//
//  Starship.swift
//  Blackstone Fortress
//
//  Created by Carl on 26/01/2021.
//

import Foundation

struct Starship {
    var name: String
    var appui: String
    var instalations: String
    var explorateur: String
    
    init(name: String, appui: String, instalations: String, explorateur: String) {
        self.name = name
        self.appui = appui
        self.instalations = instalations
        self.explorateur = explorateur
    }
}
