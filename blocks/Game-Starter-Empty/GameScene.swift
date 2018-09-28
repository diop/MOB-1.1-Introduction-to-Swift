//
//  GameScene.swift
//  Game-Starter-Empty
//
//  Created by mitchell hudson on 9/13/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var score = 0
    let squareSize = CGSize(width: 60, height: 60)
    var scoreLabel = SKLabelNode(fontNamed: "Helvetica")
    
    override func didMove(to view: SKView) {
        
        let action = SKAction.run {
            self.createSquare(x: 1, y: 1)
        }
        
        updateScore()
        
        let pause = SKAction.wait(forDuration: 2.0)
        let seq = SKAction.sequence([action, pause])
        let loop = SKAction.repeatForever(seq)
        
        self.run(loop)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered.
    }
    
    // Touch action
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let touchLocation = touch.location(in: self)
            let node = atPoint(touchLocation)
            if node.name == "square" {
                node.removeFromParent()
            }
        }
    }
    
    // Create square
    func createSquare(x: Int, y: Int) {
        let square = SKSpriteNode(texture: nil, color: .cyan, size: squareSize)
        square.name = "square"
        
        if let view = self.view {
            let upperBound = view.bounds.height
            let randomPosition = CGFloat.random(in: 1...view.bounds.width)
            
            square.position = CGPoint(x: randomPosition, y: 0.0)
            
            // Move to top sequence
            let moveUp  = SKAction.moveBy(x: 0.0, y: upperBound, duration: 5.0)
            let removeSquare = SKAction.removeFromParent()
            let seq = SKAction.sequence([moveUp, removeSquare])
            
            square.run(seq)
            addChild(square)
        }
    }
    
    func updateScore() {
        // Score
        scoreLabel.color = UIColor.white
        scoreLabel.text = "Score: \(score)"
        scoreLabel.horizontalAlignmentMode = .left
        if let view = self.view {
            scoreLabel.position = CGPoint(x: 50 , y: view.bounds.height - 65)
        }
        
        addChild(scoreLabel)
    }
}






