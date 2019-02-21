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
   
    
    let player = SKSpriteNode(imageNamed: "player")
    
    override func didMove(to view: SKView) {
    
        // BACKGROUND WHITE
        backgroundColor = SKColor.white
    
        // SETTING UP THE PLAYER
        player.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(player)
    }
   
}
