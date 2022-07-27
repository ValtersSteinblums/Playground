import UIKit

//MARK: - OOP

class Post {
    var postTitle = ""
    var postText = ""
    var postAuthor = ""
    var numberOfLikes = 0
    
    func addLike() {
        numberOfLikes += 1
    }
}

let firstPost = Post()

firstPost.postTitle = "My first twitter post"
firstPost.postText = "Just testing"
firstPost.postAuthor = "VS"
firstPost.addLike()

print("Author - \(firstPost.postAuthor) has published a new post \(firstPost.postTitle) with the text \(firstPost.postText)")

let secondPost = firstPost

firstPost.postTitle = "My second twitter post"
firstPost.postText = "Just testing again"
firstPost.postAuthor = "MM"

print("Author - \(secondPost.postAuthor) has published a new post \(secondPost.postTitle) with the text \(secondPost.postText)")


class Human {
    var name: String = "Undefiend"
    var age = 0
    
    init() {}
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let person = Human(name: "Valters", age: 28)
let newPerson = Human()

newPerson.name = "Tom"

class Alien {
    var name: String?
    var age: Int?
    var hair: Bool = false
    
    func alienDescription() -> String {
        if let alienAge = age {
            return "Hello, my name is \(name ?? "UuOo") and I am \(alienAge) years old."
        } else {
            return "Hello, my name is \(name ?? "UuOo")"
        }
    }
    
    init() {
        name = "UFO"
        hair = true
    }
    
    init(name: String, age: Int, hair: Bool) {
        self.name = name
        self.age = age
        self.hair = hair
    }
}

let alien = Alien(name: "Json", age: 31, hair: true)

class Parent {
    var name: String = "Undefiend"
    var age = 0
    
    init() {}
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func canWalk() {
        print("I can walk")
    }
    
    func canSleep() {
        print("I can sleep")
    }
    
    func canEat() {
        print("I can eat")
    }
}

let dad = Parent(name: "Frodo", age: 712)

class Child: Parent {
    func feeding() {
        if age <= 2 {
            print("need to feed me")
        } else {
            print("can feed myself, G")
        }
    }
}

let littleBoy = Child(name: "Timmy", age: 7)
littleBoy.feeding()

class SchoolChild: Child {
    func learning() {
        if age >= 7 && age <= 19 {
            print("high scool time")
        } else {
            print("too early to pop in school my man")
        }
    }
}

let schoolBoy = SchoolChild(name: "TopG", age: 13)
schoolBoy.learning()

class Figure {
    func draw(){}
    
    
}

class Circle: Figure {
    override func draw(){
        print("Draw a circle")
    }
}

class Triangle: Figure {
    override func draw(){
        print("Draw a trinagle")
    }
}

class Square: Figure {
    override func draw(){
        print("Draw a square")
    }
}

let circle = Circle()
let triangle = Triangle()
let square = Square()

func drawFigure(_ figure: Figure) {
    figure.draw()
}

drawFigure(circle)
drawFigure(square)
drawFigure(circle)
