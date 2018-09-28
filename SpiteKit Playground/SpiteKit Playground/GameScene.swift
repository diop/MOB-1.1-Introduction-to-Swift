//
//  GameScene.swift
//  SpiteKit Playground
//
//  Created by Fodé Diop on 9/27/18.
//  Copyright © 2018 Fodé Diop. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    
    let firstNode = SKNode()
    let firstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
    let firstTextureSpriteNode = SKSpriteNode(imageNamed: "spaceship")
    let blueNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100.0, height: 100.0))
    
    override func didMove(to view: SKView) {
        addChild(firstNode)
        
        firstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        firstSpriteNode.anchorPoint = CGPoint.zero
        addChild(firstSpriteNode)
        
        firstTextureSpriteNode.zPosition = 1
        
        firstTextureSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        firstSpriteNode.addChild(firstTextureSpriteNode)
        
        blueNode.zPosition = 2
        blueNode.position = CGPoint(x: firstSpriteNode.size.width/2, y: firstSpriteNode.size.height/2)
        firstSpriteNode.addChild(blueNode)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        firstTextureSpriteNode.run(SKAction.move(to: CGPoint(x: firstSpriteNode.size.width, y: firstSpriteNode.size.height), duration: 2.0))
        
        blueNode.run(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0))
        firstTextureSpriteNode.run(SKAction.move(to: CGPoint(x: firstSpriteNode.size.width, y: firstSpriteNode.size.height), duration: 2.0)) {
            self.firstTextureSpriteNode.position = CGPoint.zero
        }
        
        if !blueNode.hasActions() {
            blueNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)))
            blueNode.run(SKAction.group([SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)), SKAction.scale(by: 0.9, duration: 2.0)]))
            blueNode.run(SKAction.sequence([SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0), SKAction.scale(by: 0.9, duration: 2.0)]))
        } else {
            blueNode.removeAllActions()
        }
    
        
        if let _ = firstTextureSpriteNode.action(forKey: "Rotation") {
            firstTextureSpriteNode.removeAction(forKey: "Rotation")
        } else {
            firstTextureSpriteNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)), withKey: "Rotation")
        }
    }
}
