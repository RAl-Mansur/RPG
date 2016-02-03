//
//  EvilWizard.swift
//  RPG(oop)
//
//  Created by Ridwan Al-Mansur on 03/02/2016.
//  Copyright © 2016 Ridwan. All rights reserved.
//

import Foundation

class EvilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulet", "Salted Spider Eyes"]
    }
    
    override var type: String {
        return "Evil Wizard"
    }
    
    
    
}