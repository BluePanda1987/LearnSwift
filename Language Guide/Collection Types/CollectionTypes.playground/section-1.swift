// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//数组
var shoppingList:String[] = ["Eggs", "Milk"]

//数量
shoppingList.count

//增
shoppingList.append("Flour")                    //使用append
shoppingList

shoppingList += "celery"                        //使用+=

//在之前插入元素
shoppingList.insert("celery", atIndex:2)        //插入数据
shoppingList

//删
shoppingList.removeAtIndex(shoppingList.count-1)//删除指定位置数据
shoppingList


shoppingList += "celery"
shoppingList.removeLast()                       //删除最后一个数据
shoppingList

//改
shoppingList

shoppingList[2...3] = ["celery", "Milk","Test"]     //更改,可以插入两个?闭区间覆盖？
shoppingList

shoppingList[2..3] = ["celery", "Milk","Test"]      //开区间插入?
shoppingList

//shoppingList[1..2..3] = ["celery", "Milk","Test"]  不能接连使用..

//查 遍历

for item in shoppingList {
    item
}

for (index, value) in enumerate(shoppingList) {
    
    index
    value
}

//创建构造一个空数组

var arrayValue = []                 //不指定元素类型

var someInts = Int[]()              //根据初始化构造确定元素类型

var someString:String[]             //根据指定数据类型确定变量类型

//字典
var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]

//数量
airports.count                          //count属性返回元素数量

//增
airports["LHR"] = "London"              //直接用key增加元素
airports

//airports += ["testKey":"testValue"] 不能使用+=增加元素

//删
airports["LHR"] = nil                   //用nil删除
airports

airports.removeValueForKey("TYO")       //removeValueForKey根据key删除
airports

//改
airports["LHR"] = "London"
airports

airports["LHR"] = "London Heathrow"     //直接根据key更改
airports

airports.updateValue("London" , forKey:"LHR") //用updateValue("", forKey:)更改并返回旧值
airports

//查

for (airportCode, airportName) in airports {        //遍历key和value
    
    airportCode
    airportName
}

for airportCode in airports.keys {                  //根据keys属性遍历key
    
    airportCode
}


for (airportName) in airports.values {             //遍历values遍历value
    
    airportName
}

Array(airports.keys)                                //建立key数组
Array(airports.values)                              //建立value数组

//空字典

airports = [:]
airports







