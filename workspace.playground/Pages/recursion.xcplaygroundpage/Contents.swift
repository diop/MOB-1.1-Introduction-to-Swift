//: [Previous](@previous)
import Foundation

// FizzBuzz
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
var oneThousandNumbers = [Int]()

for i in 1...1000 {
    oneThousandNumbers.append(i)
}

for num in numbers {
    if num % 15 == 0 {
        print("\(num) FizzBuzz")
    } else if num % 3 == 0 {
        print("\(num) Fizz")
    } else if num % 5 == 0 {
        print("\(num) Buzz")
    } else {
        print(num)
    }
}

print("------------------------------------")
// Factorial
func recursiveFunction(num: UInt) -> UInt {
    if num == 0 {
        return 1
    }

    print(num)
    
    return num * recursiveFunction(num: num - 1)
}

recursiveFunction(num: 5)

// Fibonacci
func fibo(upperBound: Int) -> [Int] {
    var sequence = [Int]()
    var num1 = 1
    var num2 = 0
    
    if upperBound == 0 || upperBound == 1 {
        return [1]
    }
    
    for _ in 0...upperBound {
        let tempNum = num1 + num2
        num2 = num1
        num1 = tempNum
        sequence.append(tempNum)
    }
    
    return sequence
}

fibo(upperBound: 7)

// Challenge: Write a program that prints the powers of 2 that are less than or equal to N

let limit = 10
var i = 1

while i < limit {
    if i % 2 == 0 {
        print(i)
    }
    i += 1
}

print("------------------------------------------------------------------------")
// Write a program that prints all the numbers from 1 to N in alternative order.
// Ex. N = 5
// Output: 1 5 2 4 3

var upper = 5
var index = 1

for i in 1...upper {
    print(i)
    print(upper)
    upper -= 1
}

//: [Next](@next)
