//
//  Kimara.swift
//  RPG(oop)
//
//  Created by Ridwan Al-Mansur on 03/02/2016.
//  Copyright © 2016 Ridwan. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attemptAttack(attackPower)
        } else {
            return false
        }
    }
    
    
}