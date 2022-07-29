import UIKit

// MARK: - ENUMS

var someDay = "Friday"

func setupAlarm() {
    if someDay == "Friday" {
        print("setup my alaram on 6 am")
    } else {
        print("no alarm")
    }
}

setupAlarm()

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday, sunday
}

var weekdays = Weekday.friday
//var weekday: Weekday = .friday

func setupBedTimeAlarm() {
    if weekdays == .sunday ||  weekdays == .friday {
        print("setup my alaram on 11 am")
    } else {
        print("no alarm")
    }
}

setupBedTimeAlarm()

weekdays = .tuesday

func setupSleepAlarm() {
    switch weekdays {
    case .monday:
        print("setup my alaram on 11 am")
    case .tuesday:
        print("setup my alaram on 12 am")
    case .wednesday:
        print("setup my alaram on 13 am")
    case .thursday:
        print("setup my alaram on 14 am")
    case .friday:
        print("setup my alaram on 15 am")
    case .saturday:
        print("setup my alaram on 16 am")
    case .sunday:
        print("setup my alaram on 17 am")
//    default:
//        print("no alarm")
    }
}

setupSleepAlarm()

enum Calculation: String {
    case addition = "+"
    case subtraction = "-"
    case division = "/"
    case multiplication = "*"
}

var calc = Calculation.addition
print(calc.rawValue)

enum Planet: Int {
    case venus = 1, mars, mercury, earth, jupiter, uranus, saturn, neptune, pluto
}

var somePlanet = Planet.earth
print("Earth is the \(somePlanet.rawValue) planet from the sun")

let somePossiblePlanet = Planet(rawValue: 5)
print("The \(somePossiblePlanet?.rawValue ?? 1)th is \(somePossiblePlanet!)")

enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wknd = Weekend.sunday("Set your bed time at", 11, "PM")
print(wknd)

// MARK: Struct
struct iPhone {
    var model: String?
    var capacity: Int?
    var color: String?
    
    func getSpecifics() {
        print("Model: \(model ?? "Not available"), memory: \(capacity ?? 0), color: \(color ?? "Not available")")
    }
}

let iPhone11 = iPhone(model: "iPhone 11", capacity: 128, color: "Black")
var iPhoneXR = iPhone11
iPhoneXR.model = "iPhoneXR"
iPhoneXR.capacity = 254

iPhone11.getSpecifics()
iPhoneXR.getSpecifics()

//iPhone11 === iPhoneXR

//MARK: Class

class Mac {
    var model: String?
    var year: Int?
    var color: String?
    var ssdMemory: Int?
    
    init(model: String, year: Int, color: String, ssdMemory: Int) {
        self.model = model
        self.year = year
        self.color = color
        self.ssdMemory = ssdMemory
    }
    
    func getSpecifics() {
        print("Model: \(model ?? "Not available"), year: \(year ?? 0), color: \(color ?? "Not available"), SSD memory: \(ssdMemory ?? 0)")
    }
}

let macBookPro = Mac(model: "MacBook Pro", year: 2018, color: "Silver", ssdMemory: 512)
macBookPro.getSpecifics()

let macBookAir = macBookPro
macBookAir.model = "MacBook Air"
macBookAir.year = 2020

macBookAir.getSpecifics()
