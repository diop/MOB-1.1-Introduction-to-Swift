//: [Previous](@previous)

import Foundation

struct House {
    var numberOfDoors: Int
    var numberOfWindows: Int
    var numberOfBathrooms: Int
    var numberOfCars: Int
    
    func printHouseSpecs() {
        print("Number of doors \(numberOfDoors)")
        print("Number of windows \(numberOfWindows)")
        print("Number of bathrooms \(numberOfBathrooms)")
        print("Number of cars \(numberOfCars)")
    }
}

var newHouse = House(numberOfDoors: 10, numberOfWindows: 11, numberOfBathrooms: 12, numberOfCars: 20)

newHouse.printHouseSpecs()

class Homeowner {
    var name: String
    var age: Int
    var house: House
    
    
    init(name: String, age: Int, house: House) {
        self.name = "Matthew"
        self.age = 25
        self.house = newHouse
    }
}

//: [Next](@next)
