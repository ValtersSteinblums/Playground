import UIKit

/*
 This is a multi line comment :)
 Lesson 1 - Var, const, types of data
 */

// Single line comment :3
var helloMSG: String
helloMSG = "hello swift 🕊"
var greeting = "Hello, playground"
print(greeting)

withUnsafePointer(to: greeting) {
    print("str value \(greeting) has adress in memory: \($0)") //String interpolation
}

let swiftLanguage = """
De krachtige en intuïtieve programmeertaal Swift is door Apple ontwikkeld voor het maken van apps voor iOS, Mac, Apple TV en Apple Watch. Hiermee hebben ontwikkelaars nu meer vrijheid dan ooit. Swift is eenvoudig in het gebruik en is open source. Het enige dat je dus nodig hebt om iets bijzonders te maken, is een goed idee.
"""

print(swiftLanguage)

let longerGreeting = greeting + " We're glad you're here!"
print(longerGreeting)

let name: String = "VS"
let age: Int = 28
let height: Double = 187.3
let weight: Float = 65.4
let student: Bool = true
let myLetter: Character = "V"

let fullName = "Valters S"
let number = 12.3

var numDouble: Double = 312.12345
numDouble = 312.12345
numDouble = 3124.123456
numDouble = 31245.1234567
numDouble = 312456.12345678

var myFloat: Float = 12345.12345
myFloat = 123456.12345
myFloat = 1234567.12345
myFloat = 12345678.12345
myFloat = 123456789.12345


//MARK: - Casting

let castIntToDouble = Double(age) + height

let castIntToString = "I am " + String(age) + " years old!"

let stringNumber = "10"
let castStringToInt = age + Int(stringNumber)!

let optionalString: String = "100a"

if let stringNumber = Int(optionalString) {
    let total = stringNumber + 10
    print("total is: \(total)")
}


// MARK: - Tuples

var myName: (String, String) = ("V", "S")
var myBossIs: (String, String, Int) = ("V", "S", 28)

print("My boss is: \(myBossIs.0) \(myBossIs.1), and his age is: \(myBossIs.2)")
