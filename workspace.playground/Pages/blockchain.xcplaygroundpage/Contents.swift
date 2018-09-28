//: [Previous](@previous)

import Foundation

struct Block {
    let timestamp: Date
    let data: String
    let previousBlockHash: Int
    let hash: Int
    
    init(timestamp: Date, data: String,  previousBlockHash: lastBlock.hash) {
        self.timestamp = timestamp
        self.data = data
        self.previousBlockHash = previousBlockHash
    }
}

struct Blockchain {
    var blocks = [Block]()
    
    mutating func addBlock(_ data: String){
        guard let lastBlock = blocks.last else { fatalError("Failed to find genesis Block.") }
        let newBlock = Block(timestamp: Date())
        blocks.append(newBlock)
        
    }
}

//: [Next](@next)
