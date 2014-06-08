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