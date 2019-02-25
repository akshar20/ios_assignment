//
//  GameScene.swift
//  MyGame
//
//  Created by MacStudent on 2019-02-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

// DRAWING: https://www.raywenderlich.com/2250-how-to-make-a-line-drawing-game-with-sprite-kit-and-swift
// PLAYER IMAGE: http://3.bp.blogspot.com/-9Y6-NJcJwts/T9tmI9ebOEI/AAAAAAAADus/-0S5j_AnRio/s320/pic69716C106C0C1A4D4270D092BCC3E348.png
// SHAPE RECOGNITION REF.: https://www.youtube.com/watch?v=ZP9tWkTx7p4&list=PLY1P2_piiWEaN_cUBbooId-AsMdg4MGZu&index=1

import SpriteKit
import GameplayKit

class GameScene:SKScene {
    
    // REFERENCE PLAYER TO VARIABLE
    let player = SKSpriteNode(imageNamed: "player")
    
    
    override func didMove(to view: SKView) {

        // BACKGROUND WHITE
        backgroundColor = SKColor.white
    
        // SETTING UP THE PLAYER
        player.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(player)
        
        
    }

   
}
