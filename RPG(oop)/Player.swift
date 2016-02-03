//
//  Player.swift
//  RPG(oop)
//
//  Created by Ridwan Al-Mansur on 03/02/2016.
//  Copyright © 2016 Ridwan. All rights reserved.
//

import Foundation


class Player: Character {
    private var _name: String = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        get {
            return _inventory
        }
    }
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    convenience init(name: String, attackPower: Int, hp: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        self._name = name
    }
    
}