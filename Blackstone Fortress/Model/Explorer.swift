//
//  Character.swift
//  Blackstone Fortress
//
//  Created by Carl on 20/01/2021.
//

import Foundation

class StockExplorer {
    var classic: Classic
    var exalte: Exalte
    
    init(classic: Classic, exalte: Exalte) {
        self.classic = classic
        self.exalte = exalte
    }
}

class Explorer {
    var name: String = ""
    var movement: String = ""
    var defense: String = ""
    var agility: String = ""
    var vitality: String = ""
    var life: String = ""
    var capacity: Array<Any> = []
    var specialAttack: String = ""
    var specialRole: Array<Any> = []
    var image: String = ""
    var vaisseau: String = ""
    
    func whichSquare(variable: String) -> String {
        switch variable {
        case "image/de/de3cotes.png":
            return "triangle"
        case "image/de/de4cotes.png":
            return "carre"
        case "image/de/de5cotes.png":
            return "pentagone"
        case "image/de/doublede3cotes.png":
            return "doubletriangle"
        case "image/de/doublede4cotes.png":
            return "doublecarre"
        case "image/de/doublede5cotes.png":
            return "doublepentagone"
        default:
            return "error"
        }
    }
}

class Classic: Explorer {
    var exalte: Array<Any> = []
}

class Exalte: Explorer {
}

