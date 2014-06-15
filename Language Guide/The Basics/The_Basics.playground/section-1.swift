// Playground - noun: a place where people can play

import Cocoa

//基础部分

//变量和常量
let maximumNumberOfLoginAttempts = 10   //常量
var currentLoginAttempt = 0             //变量

//类型标注
var welcome : String
welcome = "Hello"
//welcome = 10                          //Error

//变量和常量的命名

let ㏒   = "log"
let 你好 = "你好世界"
let 🐶🐂 = "dogcow"                    //支持unicode
//let ◡ ヽ(`Д´)ﾉ ┻━┻ = "掀桌"           //不能使用制表符

//㏒ = "3.1415"                        //一旦确定常量不能更改

//输出
let intValue = 10
println("Println int value \(intValue)")
print("Print int value \(intValue)")    //区别是是否换行

//注释

//这是一个注释
/*
    这是一个多行注释
*/

/*  这是一个多行注释的开头

/*这是被嵌套的多行注释*/

这是一个多行注释的结尾*/

//分号
let cat = "🐱" ; println(cat)       //同一行多个语句用分号，其他情况下没差

//整数

let minValue = Int.min              //32 与 64 位平台不同
let maxValue = Int.max

let intUint8 = UInt8.min
let intUintValue:Int = Int(intUint8)
//let intUintValue:Int = intUint8     //类型不同不能隐式转换

//浮点
let floatValue:Float = 3.1415926    //精确六位置
let doubleValue:Double = 3.1415926  //精确15位


//数字是不含有类型的，只有编译的时候才能确定，变量则不是

//let testValue = intValue + floatValue //将会报错,因为类型不一致
let testValue = 10 + 3.1415926          //数字的类型并不确定


//数值的格式化

let decimalInteger  = 17
let binaryInteger   = 0b10001
let octalInteger    = 0o21
let hexaecimalInteger = 0x11

//指数

10e2                //10*10^2
0x2p2               //0x2 * 2^2
//0x2e2             //不知道按照什么规则计算的
//0x1e2
//0x0e2


//数字的可读性
let paddedDouble    = 000123.45_6
let oneMillion      = 1_000_000

//别名

typealias DoubleType = Double
var typeTryValue:DoubleType = 10

//typealias StringA = 10  //只能定义类型的别名？

//布尔
var boolValue = true

if boolValue {
    
    println("Hello bool value \(boolValue)")
}

let i = 1

//if i {                //不能隐式的比较
//    
//}

if i == 1 {
    
}

//元组

//定义
let httpStatus = (404, "Not Found")

//分解
let (integerCode, stringCode) = httpStatus
integerCode
stringCode

//部分分解
let (integerCode_1, _) = httpStatus
integerCode_1

//定义的时候给予元素名称
let httpStatus_1 = (integerCode:404, stringCode:"Not Found")
httpStatus_1.integerCode
httpStatus_1.stringCode

//可选类型
var optionValue:(String, Int)? = ("Hello", 10)

//强制解析

if optionValue {
    
    println(optionValue!)
    optionValue
    optionValue!
}


//optionValue = nil
//optionValue!              //将会导致运行时错误

//可选绑定

if let optionBinding = optionValue {
    
    optionValue
    optionBinding           //他们是不同类型
}

//隐式解析可选类型

var assumedString: String! = "An implicitly unwrapped optional string."

//断言

assert(true, "none error")
//assert(false)





