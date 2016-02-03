//
//  ViewController.swift
//  RPG(oop)
//
//  Created by Ridwan Al-Mansur on 03/02/2016.
//  Copyright © 2016 Ridwan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHPLabel: UILabel!
    @IBOutlet weak var EnemyHPLabel: UILabel!
    @IBOutlet weak var EnemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        player = Player(name: "Knight Lighter", attackPower: 20, hp: 110)
        playerHPLabel.text = "\(player.hp) HP"
        generateEnemy()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateEnemy() {
        let rand = Int(arc4random_uniform(2))
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPower: 12)
        } else {
            enemy = EvilWizard(startingHp: 60, attackPower: 15)
        }
        EnemyImage.hidden = false
    }

    
    @IBAction func attackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPower) {
            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            EnemyHPLabel.text = "\(enemy.hp) HP"
        } else {
            printLabel.text = "Attack was unsuccessful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            chestMessage = loot
            printLabel.text = "\(player.name) found \(loot)"
            chestButton.hidden = false
            
        }
        
        if !enemy.isAlive {
            EnemyHPLabel.text = ""
            printLabel.text = "Killed \(enemy.type)"
            EnemyImage.hidden = true
        }
        
    }
    @IBAction func onChestTapped(sender: AnyObject) {
        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateEnemy", userInfo: nil, repeats: false)
        
    }

    
    
    
    
    
}
















