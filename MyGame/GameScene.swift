//
//  GameScene.swift
//  MyGame
//
//  Created by MacStudent on 2019-02-21.
//  Copyright © 2019 MacStudent. All rights reserved.
//

// SHAPE RECOGNITION REF.: https://www.youtube.com/watch?v=ZP9tWkTx7p4&list=PLY1P2_piiWEaN_cUBbooId-AsMdg4MGZu&index=1

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    // REFERENCE PLAYER TO VARIABLE
    let player = SKSpriteNode(imageNamed: "player")

    // CANVAS VARIABLES
    let canvas = CanvasView()
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startingPoint:CGPoint!

    
    
    override func didMove(to view: SKView) {
    
        // BACKGROUND WHITE
        backgroundColor = SKColor.white
    
        // SETTING UP THE PLAYER
        player.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        addChild(player)
    }
    
    
    // TOUCH BEGAN
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startingPoint = touch?.location(in: self)
    }
    
    
    // TOUCH MOVED
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startingPoint = touch?.location(in: self)
        
        path = UIBezierPath()
        path.move(to: startingPoint)
        path.addLine(to: touchPoint)
        startingPoint = touchPoint
        
        // Calling the layer
        //canvas.setStartingPath(pt:path, tp:touchPoint, sp:startingPoint)
        canvas.drawShapeLayer()
    }
    
    
    
    
    // INTERNAL CLASS FOR DETECTING SHAPE
    internal class CanvasView:UIView {
        
        var lineColor:UIColor = UIColor.magenta
        var lineWidth:CGFloat = 10.0
        var path:UIBezierPath!
        var touchPoint:CGPoint!
        var startingPoint:CGPoint!
        
        func setStartingPath(pt:UIBezierPath, tp:CGPoint, sp:CGPoint){
            self.path = pt
            self.touchPoint = tp
            self.startingPoint = sp
        }
        
        
        // CREATING BASE LAYER
        func drawShapeLayer(){
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            shapeLayer.strokeColor = lineColor.cgColor
            shapeLayer.lineWidth = lineWidth
            shapeLayer.fillColor = UIColor.clear.cgColor
            
            self.layer.addSublayer(shapeLayer)
            self.setNeedsDisplay()
        }
        
        // CLEARING CANVAS
        func clearCanvas(){
            path.removeAllPoints()
            self.layer.sublayers = nil
            self.setNeedsDisplay()
        }
    
    }
   
}
