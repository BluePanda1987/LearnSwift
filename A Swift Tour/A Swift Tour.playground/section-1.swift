// Playground - noun: a place where people can play

import Cocoa

//A Swift Tour

//hello world
println("Hello World")


//Simple Value

var myVarable = 42
myVarable = 50
let myConstant = 42


//implicit explicit type
var implicitInteger = 70
var implicitDouble = 70.0
let explicitDouble:Double = 70

//Never impicitly converted to another type
let label = "The width is "
let width = 70
let widthLabel = label + String(width)
//let widthLabel = label + width impicitly convert experiment



//Even simpler way to include values in strings

let apples = 3
let oranges = 5

let applesSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


//access elements by writing the index  or key in brackets []

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"


var occupations = ["Malcolm":"Caption", "Kaylee":"Mechanic",]

occupations["Jayne"] = "Public Relations"

//To create an empty array or dictionary , use the initalizer syntax.

let emptyArray = String[]();
let emptyDictionary = Dictionary<String, Float>();

//Control Flow

let individualScores = [75, 43, 103, 87, 12 ]

var teamScore = 0

for scroe in individualScores {
    
    if scroe > 50 {
        
        teamScore += 3
    }
    else{
        
        teamScore += 1
    }
}


//Optional value

var optionalValue:String? = "Hello"
//Optional
optionalValue == nil;

var optionalName:String? = "Johnny Appleessed"
var greeting = "Hello"

//optionalName = nil; //experiment

if let name = optionalName {
    
    greeting = "Hello, \(name)."
}
//else {
//    greeting = "Hello somebody.\(name)"
//}

//Switch
let vegetable = "red pepper"

switch vegetable{
    
    case "celery":
        let vegetableComment = "Add some raisins and make ants on a log."
    case "cucumber", "watercress":
        let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
        let vegetableComment = "Is it a spicy \(x) ?"
    default:
        let vegetableComment = "Everything tates good in soup."
}

//iterate over items in dictionary

let interestingNumbers = [
    
    "Prime": [ 2 ,3, 5 ,7 ,11 ,13],
    "Fibonacci":[1, 1, 2, 3, 5, 8],
    "Square":[1, 4, 9, 16, 25],
    
]

var largest = 0

for (kind, numbers) in interestingNumbers {
    
    for number in numbers {
        
        if number > largest {
            
            largest = number
        }
    }
}
