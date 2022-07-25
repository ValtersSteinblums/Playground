import UIKit

//MARK: - Collections

let arrayOfStrings: [String] = []
var arrayOfInts = [Int]()

let arrayOfString = ["a", "d", "b", "c"]
arrayOfString[2]


arrayOfInts = [1, 2, 3, 4, 5]
arrayOfInts = [1, 2, 3, 4, 5, 6]
arrayOfInts += [7, 8]
arrayOfInts.append(9)
arrayOfInts.isEmpty
arrayOfInts.insert(0, at: 0)
arrayOfInts.count
arrayOfInts[9] = 10
//arrayOfInts.removeAll()
//arrayOfInts = []
//arrayOfInts.reversed()
arrayOfInts.reverse()

print(arrayOfInts)

type(of: arrayOfInts)

var fruits = ["mango", "durian"]

if !fruits.isEmpty {
    fruits.append("apple")
    fruits.removeFirst()
    fruits.insert("pear", at: 2)
    fruits.insert(contentsOf: ["cherry", "mango"], at: 3)
//    fruits.sorted()
    print(fruits.sorted())
}

fruits.removeAll(where: { fruit in
    fruit == "pear"
})

print(fruits)

let search = fruits.contains { fruit in
    fruit == "pear"
}

var list: [[Int]] = [[1, 2, 3], [4, 5, 6]]
print(list[1][1])

// MARK: - SET

var setOfCharacters = Set<Character>()
var setOfInts: Set<Int> = []

setOfCharacters = ["a", "b", "c", "d"]
setOfCharacters = ["b"]
setOfCharacters.insert("c")
setOfCharacters.insert("a")
//setOfCharacters.removeAll()
//setOfCharacters = []
setOfCharacters.contains("c")

print(setOfCharacters)

let someSorting = setOfCharacters.sorted()
someSorting.sorted(by: >)
print(someSorting)

let animals: Set = ["🕊", "🐥" ,"🦄"]
print(animals)

// MARK: - Dictionaries

var stringDict = Dictionary<String, String>()

var intDict = [String: Int]()

var someDict: [String: Int] = [:]

// key:value

var student: [String: String] = [
    "firstName": "V",
    "lastName": "S",
    "DOB": "28-Jul-1993",
    "email": "john@doe.com"
]

student["firstName"]
student["firstName"] = "Valters"
student["fullName"] = "Valters Steinblums"
print(student)

student.removeValue(forKey: "fullName")
student["email"] = nil

dump(student)
type(of: student)

var fruitsList: [String: [String]] = [
    "A" : ["Apple, Appricot"],
    "B" : ["Banana", "Blueberry"]
]

fruitsList["B"]?[0]

// for loop

for i in 1...10 {
    print("Hello from \(i)")
}

for _ in 1...10 {
    print("Hello")
}


var basket = 0
let apples = [
    "red apple",
    "green apple",
    "yellow apple",
    "red apple",
    "green apple",
    "yellow apple",
    "red apple",
    "green apple",
    "yellow apple"
]

for apple in apples {
    if apple == "red apple" {
        basket += 1
    }
}

print("I have \(basket) red apples in my basket!")

let numberOfLegs = [
    "Spider" : "8",
    "Ant" : "6",
    "Dog" : "4"
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) has \(legsCount) legs")
}

var counter = 0

while true {
    print("My counter is: \(counter)")
    counter += 1
    
    if counter == 20 {
        break
    }
}



