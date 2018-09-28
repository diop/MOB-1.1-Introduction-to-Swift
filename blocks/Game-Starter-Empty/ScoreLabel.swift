//
//  ScoreLabel.swift
//  Game-Starter-Empty
//
//  Created by Fodé Diop on 9/25/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import SpriteKit

// Strech Goal:
// Make aclass for Score Label
// It should set all the default properties of the label
// It should have a method that updates the score it displays
// When the score changes, the label counts up to the new value.
class ScoreLabel: SKLabelNode {
    var score: Int = 0
    
    func updateScore() {
        if score < 0 {
            // Stop the game
        } else {
            // Display the new score
        }
    }
    
    func stopGame() {
        
    }
}
