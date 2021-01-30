//
//  Ennemy.swift
//  Blackstone Fortress
//
//  Created by Carl on 30/01/2021.
//

import Foundation

class Ennemy {

    var image: String
    var name: String
    var movement: Int
    var blood: Int
    var capacity: Array<AnyObject>
    var specialAttack: Array<AnyObject>
    var specialRole: Array<AnyObject>
    var comportement: Array<AnyObject>
    var uniqueattack: Array<AnyObject>

    init(image: String, name: String, movement: Int, blood: Int, capacity: Array<AnyObject>, specialAttack: Array<AnyObject>, specialRole: Array<AnyObject>, comportement: Array<AnyObject>, uniqueattack: Array<AnyObject>) {
        self.image = image
        self.name = name
        self.movement = movement
        self.blood = blood
        self.capacity = capacity
        self.specialAttack = specialAttack
        self.specialRole = specialRole
        self.comportement = comportement
        self.uniqueattack = uniqueattack
    }
}
