//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myVar =  42
myVar = 50

let myConst = 100

let implicitInteger = 70
let implicitDouble = 70.0
let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3.0
let oranges = 5.0
let name = "Honey"
let appleSummary = "\(name) has \(apples)."
let fruitSummary = "\(name) has \(apples + oranges) pieces of fruit"

let quotation = """
\(name) said "She has \(apples) apples."
And then she said "I have \(apples + oranges) oranges."
"""

var shoppingList = ["catfish", "cheese", "water", "bananas"]
shoppingList[2] = "bottle of water"

var occupations = [
    "Fodé": "iOS",
    "Diop": "Machine Learning"
]

occupations["Amy"] = "Interior Design"

let emtyArray = [String]()
let emptyDict = [String: Float]()

shoppingList = []
occupations = [:]

let invidualScores = [90, 70, 25, 40, 95]
var teamScore = 0

for score in invidualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = nil
var greeting = "Hello"

if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, stranger"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable  = "red pepper"

switch vegetable {
case "celery":
    print("add some raisins and make ants on a log")
case "cuccumber", "watercress":
    print("That would make a good tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }

}
print(largest)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 100
} while m < 100

print(m)

var total = 0
for i in 0..<4 {
    total += i
}
print(total)

func greet(person: String, lunch: String) -> String {
    return "Hello \(person), today's lunch is \(lunch)."
}

greet(person: "Bob", lunch: "Burger")

func greet(_ person: String, on day: String) -> String {
    return "hello \(person), today is \(day)."
}

greet("Fodé", on: "Thursday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < max {
            min = score
        }
            sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func returnFifteen() -> Int {
    var y = 100
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return  1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    let result = number * 3
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number})
print(mappedNumbers)

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) of sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) of sides."
    }
}

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "Test Square")
test.area()
test.simpleDescription()

// Getters and Setters
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue /  3.0
        }
    }

}

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }

    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "Another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "Larger Square")
print(triangleAndSquare.triangle.sideLength)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "Optional Square")
let sideLength = optionalSquare?.sideLength

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "Ace"
        case .jack:
            return "Jack"
        case .queen:
            return "Queen"
        case .king:
            return "King"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
let aceRawValue = String(ace.rawValue)

enum Suit {
    case spades, hearts, clubs, diamonds
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "Spades"
        case .hearts:
            return "Hearts"
        case .clubs:
            return "Clubs"
        case .diamonds:
            return "Diamonds"
        }
    }
}

let hearts = Suit.hearts
let heartDescription = hearts.simpleDescription()

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of whatever you're looking for")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure is --> \(message)")
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

print(threeOfSpades)

var dogBreeds = ["little dog", "big dog", "small dog", "smaller dog", "larger dog"]
var favEmojis = [😎, 👽, 🤡, 👺, 🤖]
var favPrimes  = [2, 3, 5, 7, 11]

print("I \(favEmojis[2]) dogBreeds[1] with \(favPrimes[3])")

print(dogBreeds)
