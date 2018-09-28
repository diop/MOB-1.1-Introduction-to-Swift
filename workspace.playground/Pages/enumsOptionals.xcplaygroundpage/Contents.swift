//: [Previous](@previous)

import Foundation

enum Day {
    case sunday, monday, tuesday, webnesday, thursday, friday, saturday
}
enum DayType {
    case weekend, weekday
}

func dayType(for day: Day) -> DayType {
    switch day {
    case .saturday, .sunday: return .weekday
    default: return .weekday
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend: return true
    case .weekday: return false
    }
}

let type = dayType(for: .saturday)
let isMuted = isNotificationMuted(on: type)

struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Fodé", middleName: nil, lastName: "Diop")
me.fullName()

let airportCodes = ["CDG": "Charles De Gaulle"]


if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("That key does not exist!")
}

// Optional Binding

let weatherDictionary: [String: [String: String]] = [
    "currently": ["temperature": "22.0"],
    "daily": ["temperature": "22.0"],
    "weekly": ["temperature": "22.0"]
]

//if let dailyWeather = weatherDictionary["daily"] {
//    if let highTemp = dailyWeather["temperature"] {
//        print(highTemp)
//    }
//}

if let dailyWeather = weatherDictionary["daily"], let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

//: [Next](@next)
