import Cocoa

var greeting = "Hello, playground"


// My Solution
class Animal {
    let numberOfLegs: Int
    
    init(numberOfLegs: Int) {
        self.numberOfLegs = numberOfLegs
    }
}


// For Dogs and subtypes
class Dog: Animal {
    
    init() {
        super.init(numberOfLegs: 4)
    }
    
    func speak() {
        print("Wof Wof !!")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("Corgi Wof Wof !!")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Poodle Wof Wof !!")
    }
}

// For Cats and subtypes
class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(numberOfLegs: 4)
    }
    
    func speak() {
        print("Meow Meow !!")
    }
}

final class Persian: Cat {
    override func speak() {
        print("Persian Meow Meow !!")
    }
}

final class Lion: Cat {
    override func speak() {
        print("Lion Roar Roar !!")
    }
}

let dog = Dog()
dog.speak()

let corgi = Corgi()
corgi.speak()

let poodle = Poodle()
poodle.speak()

let cat = Cat(isTame: true)
cat.speak()

let persian = Persian(isTame: true)
persian.speak()

let lion = Lion(isTame: false)
lion.speak()


