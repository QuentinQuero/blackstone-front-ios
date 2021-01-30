//
//  Character.swift
//  Blackstone Fortress
//
//  Created by Carl on 20/01/2021.
//

import Foundation

struct Character {

    var name: String
    var image: String
    var vaisseau_id: String

    var life: Int
    var movement: Int

    var defense: String
    var defense_exalte: String

    var agility: String
    var agility_exalte: String

    var vitality: String
    var vitality_exalte: String

    var capacity: Array<Any>
    var capacity_exalte: Array<Any>

    var specialAttack: String
    var specialAttack_exalte: String

    var specialRole: Array<Any>
    var specialRole_exalte: Array<Any>

    var exalte: Array<Any>

    var uniqueattack: Array<Any>
    var uniqueattack_exalte: Array<Any>

    init(name: String, image: String, vaisseau_id: String, life: Int, movement: Int, defense: String,
         defense_exalte: String, agility: String, agility_exalte: String, vitality: String,
         vitality_exalte: String, capacity: Array<Any>, capacity_exalte: Array<Any>,
         specialAttack: String, specialAttack_exalte: String, specialRole: Array<Any>,
         specialRole_exalte: Array<Any>, exalte: Array<Any>,
         uniqueattack: Array<Any>, uniqueattack_exalte: Array<Any>) {

        self.name = name
        self.image = image
        self.vaisseau_id = vaisseau_id

        self.life = life
        self.movement = movement

        self.defense = defense
        self.defense_exalte = defense_exalte

        self.agility = agility
        self.agility_exalte = agility_exalte

        self.vitality = vitality
        self.vitality_exalte = vitality_exalte

        self.capacity = capacity
        self.capacity_exalte = capacity_exalte

        self.specialAttack = specialAttack
        self.specialAttack_exalte = specialAttack_exalte

        self.specialRole = specialRole
        self.specialRole_exalte = specialRole_exalte

        self.exalte = exalte

        self.uniqueattack = uniqueattack
        self.uniqueattack_exalte = uniqueattack_exalte
    }

}

//import Foundation
//
//// MARK: - Character
//class Explorer {
//
//    enum How {
//        case classic, exalte
//    }
//
//    var how: How
//    var name: String
//    var movement: Int
//    var defense: String
//    var agility: String
//    var vitality: String
//    var life: Int
//    var capacity: Array<AnyObject>
//    var uniqueattack: Array<AnyObject>
//    var specialRole: Array<AnyObject>
//    var exalte: Array<AnyObject>
//    var image: String
//    var vaisseau: String
//
//    init(how: How, name: String, movement: Int, defense: String, agility: String, vitality: String, life: Int, capacity: Array<AnyObject>, uniqueattack: Array<AnyObject>, specialRole: Array<AnyObject>, exalte: Array<AnyObject>, image: String, vaisseau: String) {
//        self.how = how
//        self.name = name
//        self.movement = movement
//        self.defense = defense
//        self.agility = agility
//        self.vitality = vitality
//        self.life = life
//        self.capacity = capacity
//        self.uniqueattack = uniqueattack
//        self.specialRole = specialRole
//        self.exalte = exalte
//        self.image = image
//        self.vaisseau = vaisseau
//    }
//}
//
//// MARK: - Ennemy
//class Ennemy {
//
//    var image: String
//    var name: String
//    var movement: Int
//    var blood: Int
//    var capacity: Array<AnyObject>
//    var specialAttack: Array<AnyObject>
//    var specialRole: Array<AnyObject>
//    var comportement: Array<AnyObject>
//    var uniqueattack: Array<AnyObject>
//
//    init(image: String, name: String, movement: Int, blood: Int, capacity: Array<AnyObject>, specialAttack: Array<AnyObject>, specialRole: Array<AnyObject>, comportement: Array<AnyObject>, uniqueattack: Array<AnyObject>) {
//        self.image = image
//        self.name = name
//        self.movement = movement
//        self.blood = blood
//        self.capacity = capacity
//        self.specialAttack = specialAttack
//        self.specialRole = specialRole
//        self.comportement = comportement
//        self.uniqueattack = uniqueattack
//    }
//}
