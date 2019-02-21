//
//  GameScene.swift
//  MyGame
//
//  Created by MacStudent on 2019-02-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
   
    // REF: https://www.raywenderlich.com/71-spritekit-tutorial-for-beginners
    
    let player = SKSpriteNode(imageNamed: "player")
    
    override func didMove(to view: SKView) {
    
        // BACKGROUND WHITE
        backgroundColor = SKColor.white
    
        // SETTING UP THE PLAYER
        player.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(player)
    }
    
    
    // GENERATING RANDOM POSITIONS
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
    
    // ADDING MOSTERS FOR COMBAT
    func generateMonster() {

        let monster = SKSpriteNode(imageNamed: "monster")
        
        // Determine where to spawn the monster along the Y axis
        let actualY = random(min: monster.size.height/2, max: size.height - monster.size.height/2)
        
        // Position the monster slightly off-screen along the right edge,
        // and along a random position along the Y axis as calculated above
        monster.position = CGPoint(x: size.width + monster.size.width/2, y: actualY)
        
        // Add the monster to the scene
        addChild(monster)
        
        
    }
   
}
