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

numbers.map(
    {
        number in 3 * number
    })

sort([1, 5, 3, 12, 2]) { $0 > $1 }


//对象和类
class NamedShape {
    
    var numberOfSides:Int = 0
    var name:String
    
    func simpleDescription() ->String {
        
        return "A shape with \(numberOfSides) sides."
    }
    
    //构造
    init(name: String) {
        
        self.name = name
    }
    
    
    //析构没有括号
    deinit {
        
        self.name = ""
    }
}


class Square : NamedShape { //subclass

    var sideLength:Double
    
    init(sideLength:Double, name:String) { //override init
        
        self.sideLength = sideLength
        super.init(name: name)              //call super init
        numberOfSides = 4
    }
    
    func area() -> Double {
        
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String { //must override
        
        return "A shape with sides of length \(sideLength)."
    }
}


let test = Square(sideLength:5.2, name:"my test square")
test.area()
test.simpleDescription()

class EquilateralTriangle:NamedShape {
    
    var sideLength : Double = 0.0
    
    init(sideLength :Double , name:String ) {
        
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3               //super class property
    }
    
    var perimeter: Double {
    get {
        
        return 3.0 * sideLength
    }
    set {
        sideLength = newValue / 3.0   //newValue 隐式名称
    }
    
    }
    
    override func simpleDescription() -> String {
        
        return "equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength:3.1, name:"a triangle")
triangle.perimeter

triangle.perimeter = 9.9
triangle.sideLength


//willSet didSet
//如果你不需要计算出一个属性的值，但需要确保一些代码在设定一个新值之前或之后运行，使用 willSet 和 didSet。比如，下面的类会确保它的三角形的边长总是和它的方形的边长相等。
class TriangleAndSquare
{
    var triangle :EquilateralTriangle
    {
    willSet {
        
        square.sideLength = newValue.sideLength
    }
    
    }
    
    var square:Square {

    
    willSet {
        
        triangle.sideLength = newValue.sideLength
    }
        
    didSet{
    
    }
    }
    
    init(size:Double, name:String){ //必须要初始化？
        
        square = Square(sideLength:size, name:name)
        triangle = EquilateralTriangle(sideLength:size, name:name)
    }
}

var triangleAndSquare = TriangleAndSquare(size:10, name:"another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength

triangleAndSquare.square = Square(sideLength:50, name:"larger square")
triangleAndSquare.triangle.sideLength

//?
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength


//enum

enum Rank:Int {

    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jak, Queen, King

    func simpleDescription() -> String {
        
        switch self {
            
        case .Ace:
            return "ace"
        case .Two:
            return "Two"
        case .Three:
            return "Three"
        case .Four:
            return "Four"
        case .Five:
            return "Five"
        case .Six:
            return "Six"
        case .Seven:
            return "Seven"
        case .Eight:
            return "Eight"
        case .Nine:
            return "Nine"
        case Ten:
            return "Ten"
        case Jak:
            return "Jak"
        case Queen:
            return "Queen"
            default:
                return String(self.toRaw())
        }
    }
}

let ace = Rank.Ace
let two = Rank.Two
let king = Rank.King
var rank:Rank?

//raw

let aceRawValue = ace.toRaw()
let twoRawValue = two.toRaw()

two.simpleDescription()
king.simpleDescription()
rank?.simpleDescription()

func rankComplar(rank1:Rank, rank2:Rank) -> Bool {
    
    if rank1.toRaw() > rank2.toRaw() {
        
        return true
    }
    
    return false
}

rankComplar(ace, two)

//转换
if let convertedRank = Rank.fromRaw(50) {
    
    let threeDescription = convertedRank.simpleDescription()
}

//枚举可以是字符串和浮点数
enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        
        switch self {
            
        case .Spades , .Hearts :
            return "black"
        case .Diamonds, .Clubs :
            return "red"
        }
    }
}

let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()
let color = hearts.color()


struct Card {
    
    var rank:Rank
    var suit:Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

//可以省略
let threeOfSpades = Card(rank:.Three , suit:.Spades)

enum ServerResponse {
    //类型可以是元组？
    //case 的意义是什么
    case Result(String, String)
    case Error(String), Test_1(String, Int)
    case Test_2(Float)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese.")
let enum_Test_1 = ServerResponse.Test_1("test", 10)
let enum_Test_2 = ServerResponse.Test_2(20.0)

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure...  \(error)"
default:
    let serverResponse = "Sucess."
}

//protocol
protocol ExampleProtocol {
    
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription


struct SimpleStructure: ExampleProtocol {
    
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    
//没有mutating关键字不允许改变结构
//    func adjustTest() {
//        simpleDescription = " (adjusted)"
//    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
    
    mutating func test()
    {
        self += 52
    }
}

7.simpleDescription

var intValue = 10
intValue.simpleDescription
intValue.adjust()
intValue.test()
intValue


let protocoValue: ExampleProtocol = a
protocoValue.simpleDescription

//范型
func repeat<ItemType>(item: ItemType, times: Int) -> ItemType[] {
    
    var result = ItemType[]()
    
    for i in 0..times {
        result += item
    }
    
    return result
}

repeat("knock", 4)

// Reimplement the Swift standard library's optional type
enum OptionalValue<T> {
    case None
    case Some(T)
    case Any
    //不知道是否可以添加一个不同名称的元素,playground一直崩溃
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)

func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])

anyCommonElements(["hello", 2, 3], ["world", 2.0])
