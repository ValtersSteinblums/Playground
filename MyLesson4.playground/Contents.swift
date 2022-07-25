import UIKit

// MARK: - Functions

func multiplyTwoNumbers() {
    print("result: ", 3 * 5)
}

multiplyTwoNumbers()

func multiplyNumbers() -> Int {
    let a = 5
    let b = 5
    
    return a * b
}

print(multiplyNumbers())

// func name(argument param, Data type) -> return type
func multiplyTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    return a * b
}

var myResult = multiplyTwoNumbers(numberOne: 2, numberTwo: 5)
print(myResult)


func multiplyTwoNum(numberOne: Int, numberTwo: Int) -> Int {
    
    return numberOne * numberTwo
}

myResult = multiplyTwoNum(numberOne: 3, numberTwo: 3)
print(myResult)


func multiplyTwoNum(_ numberOne: Int, _ numberTwo: Int) -> Int {
    return numberOne * numberTwo
}

myResult = multiplyTwoNum(5, 6)
print(myResult)

func multiplyTwoNum(_ numberOne: Int, multiply numberTwo: Int) -> Int {
    return numberOne * numberTwo
}

myResult = multiplyTwoNum(7, multiply: 3)
print(myResult)

func average(_ numbers: Double...) -> Double {
    var total = 0.0
    for pickNumber in numbers {
        total += pickNumber
    }
    
    return total / Double(numbers.count)
}

average(5, 10, 6, 7, 8, 1, 3, 4)

let someValue = 5
let arrayOfNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 32, 33, 66]

func filterLessThen(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

filterLessThen(value: someValue, numbers: arrayOfNumbers)


func calculateDateValues(from myDay: Int, _ myMonth: Int, _ myYear: Int) {
    let currentDate = Date()
    let userCalendar = Calendar.current
    
    var dateComponents = DateComponents()
    dateComponents.day = myDay
    dateComponents.month = myMonth
    dateComponents.year = myYear
    
    if let calculateDate = userCalendar.date(from: dateComponents) {
        let daysPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthsPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearsPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearsPassed ?? 0) years, \(monthsPassed ?? 0) months, \(daysPassed ?? 0) days have passed since the D.O.B")
    }
}

calculateDateValues(from: 28, 7, 1993)
