//: Playground - noun: a place where people can play

import UIKit


//var initialArray: [Int]
//var firstNum: Int
//var secondNum: Int
//var results: [Int]


func fibo(limit: Int) -> [Int] {
    // Iterate over all the numbers between 0 to n + 1 (not including the upper bound)
    // Incrememt the iterator
    // Sum n and previous n
    var sum = 0
    var x = y
    var y = sum
    var numbers = []

    for _ in 0...<limit {
       sum = x + y
        x = y
        y = sum
        
        numbers.append(sum)
        
    }
    
    return numbers
}

fibo(5)
fibo(7)

// Func fibo(n: Int) -> Int
// fibo(n: 7) -> [1,1,3,5,8,13]

// Write a program that prints the power of 2 that are less than or equal to N.
// if number times 2 is >= limit then exit

func checkModulus(x: Int){
    if 
}

func powerCheck(limit: int) -> [Int]{
    var y = 0
    var newArr = []
    var doubled = double(num)
    while doubled <= limit {
        //
        // arr.append
    }
    return arrayOfPowers
    
}

