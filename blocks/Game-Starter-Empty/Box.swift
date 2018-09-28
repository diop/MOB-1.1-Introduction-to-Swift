//
//  Box.swift
//  Game-Starter-Empty
//
//  Created by Fodé Diop on 9/25/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation
import SpriteKit

// Make a Class Box
// Set the size of the Box
// Set the color of the Box
// Set the Name of the Box
// Strech Goal: Set Box Position + Animate & Remove Box
class Box {
    var size: CGSize
    var color: UIColor
    var name: String
    
    init(size: CGSize, color: UIColor, name: String) {
        self.size = size
        self.color = color
        self.name = name
    }
    
    func setBoxPosition() {
        
    }
    
    func animateBox() {
        
    }
    
    func removeBox() {
        //        self.removeFromparent()
    }
}
