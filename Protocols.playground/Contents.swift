//: Playground - noun: a place where people can play

import UIKit



protocol TextDescription {
    var description: String { get }
}

class Person: TextDescription {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    var description: String {
        return "Name: \(jim.name) \nHeight: \(jim.height) \nFavorite Food: \(jim.favoriteFood)"
    }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let jim = Person(name: "Jim", height: 64.0, favoriteFood: "Pasta")

print(jim.description)
//Name: Jim
//Height: 64.0
//Favorite Food: Pasta



class Building: TextDescription {
    let height: Double
    let address: String
    
    init (height h: Double, address a: String ){
        self.address = a
        self.height = h
    }
    
    var description: String {
        return ("Building is at \(address) and is \(height) meters tall")
    }
    
}


protocol PrettyDescription: TextDescription {
    
    var description: String { get }
    
}



class Animal: PrettyDescription {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
    var description: String{
        return ("This adorable animal's name is \(name)\n Its favorite food is \(favoriteFood)")
    }
}

let sandy = Animal(name: "sandy", height: 0.4, favoriteFood: "dry cat food")
let edmund = Person(name: "edmund", height: 1.6, favoriteFood: "cheez-its")
let cBuilding = Building(height: (9.5 * 3.1), address: "65-70 Park Terrace E" )
let flora = Person(name: "flora", height: 1.5, favoriteFood: "lentil soup")
let lily = Animal(name: "lily", height: 0.35, favoriteFood: "bathwater")
var prettyThings: [PrettyDescription] = []
let family = [edmund, cBuilding, sandy, flora, lily] as [Any]

for thing in family{
    if thing is PrettyDescription{
        prettyThings.append(thing as! PrettyDescription)
    }
}

for prettyThing in prettyThings {
    
    print(prettyThing.description)
    
}


