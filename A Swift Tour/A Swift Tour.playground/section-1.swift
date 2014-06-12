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

var n = 2

while n < 100 {
    
    n = n*2
}

n = 2

do {

    n = n*2
}while n < 100

//..

var firstForLoop = 0

for i in 0..3 {
    
    firstForLoop += i
}

firstForLoop

var secondForLoop = 0

for i in 0...3
{
    secondForLoop += i
}

secondForLoop

//fuction

func greet(name:String, day:String) -> String {
    
    return "Hello \(name), today is \(day)"
}

greet("Bob", "Tuesday")

//tuple

func getGasPrices() ->(Double, Double, Double){
    
    return (3.569, 3.69, 3.79)
}

getGasPrices()

//可变参数

func sumOf(numbers:Int ...) -> Int {
    
    var sum = 0
    
    for number in numbers {
        
        sum += number
    }
    
    return sum
}

sumOf(42, 597, 12)


//函数嵌套

func retunrnFifteen() -> Int {
    
    var  y = 10
    func add() {
        
        y += 5
    }
    
    add()
    
    return y
}

retunrnFifteen()

//add() //嵌套函数的作用范围是有限的

//函数作为返回值
func makeIncrementer() -> (Int -> Int) {
    
    func addOne(number:Int) ->Int {
        
        return number + 1
    }
    
    return addOne //返回的是函数的名字
}

var increment = makeIncrementer()

increment(7)

//一个函数可以作为另一个函数的参数
func hasAnyMatches(list:Int[], condition:Int -> Bool) -> Bool {
    
    for item in list {
        
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(number:Int) ->Bool {
    
    return number < 10
}

var numbers = [20, 19, 7, 12]

hasAnyMatches(numbers, lessThanTen)

//cosure
//没看懂     func map<U>(transform: (T) -> U) -> U[]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

