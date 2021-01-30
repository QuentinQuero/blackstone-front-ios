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
    var capacity: Array<AnyObject> = []
    var uniqueattack: Array<AnyObject> = []
    var specialRole: Array<AnyObject> = []
    var image: String = ""
    var vaisseau: String = ""
}

class Classic: Explorer {
    var exalte: Array<AnyObject> = []
}

class Exalte: Explorer {
}

