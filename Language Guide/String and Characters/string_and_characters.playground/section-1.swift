// Playground - noun: a place where people can play

import UIKit

let someString = "Some string literal value."   //字面量

let wiseWords = "wise words \0 \r \t \n \" \'"  //转意字符 \r\n不起作用？

let dollarSign = "\x24"                         //单字节
let blackHeart = "\u2665"                       //双字节
let sparklingHeart = "\U0001F496"               //四字节

//初始化字符串

var emptyString = ""
var anotherString = String()

if emptyString.isEmpty {                        //空字符串判断
    emptyString
}

//字符串可变性

var variableString = "Horse"
variableString += " and carriage"

let constantString = "Highlander"
//constantString += " and another Highlander"   //常量不可变


//字符串是值类型

//Working with Characters

for character in "Dod!🐶" {
    
    println(character)
}

//字符
let yenSign: Character = "$"

//计算字符数量
let count = countElements(constantString)

//链接字符串和字符

//字符串和字符串拼接
let newString = variableString + constantString
variableString += constantString

//字符和字符串拼接
let characterAndString = constantString + yenSign

variableString = String()
variableString += yenSign

//yenSign += yenSign                //字符溢出

//字符串插值
let multiplier = 3
let message = "\(multiplier) 乘以 2.5 是 \(Double(multiplier) * 2.5)"

//字符串比较

//相等

let string_same_1 = "we are same"
let string_same_2 = "we are same"
let string_in_1 = "we"
let string_in_2 = "are"
let string_in_3 = "same"
let character_in:Character = "e"

if string_same_1 == string_same_2 {
    
    true
}

//前缀相等
if string_same_1.hasPrefix(string_in_1) {
    
    true
}


if string_same_1.hasPrefix(string_in_2) {           //对中间的字符串无效
    true
}
else {
    
    false
}

//后缀相等
if string_same_1.hasSuffix(string_in_3) {
    true
}

//if string_same_1.hasSuffix(character_in) {            //不接受Character
//    true
//}

//大小写
string_same_1.uppercaseString
string_same_1.lowercaseString

let dogString = "Dog!🐶"

func uniCodeOutput() {
    
    for codeUnit in dogString.utf8 {
        
        "\(codeUnit)"
    }
    
    
    for codeUnit in dogString.utf16 {
        
        "\(codeUnit)"
    }
    
    for codeUnit in dogString.unicodeScalars {
        
        "\(codeUnit)"
    }
}

uniCodeOutput()
dogString
