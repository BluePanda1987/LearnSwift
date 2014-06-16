##基础部分

###基础类型

整形：`Int`

浮点型：`Float` `Double`

布尔：`Bool`

字符串：`String`

集合：`Array` `Dictionary`

*	Swift 使用变量来机型存储并通过变量名来关联值
*	Swift 增加了新的类型**元组**`Tuple`, 可以传递一组数据。
*	Swift 增加了可选(`Optional`)类型
*	Swift 是类型安全的语言

###常量和变量

####声明

*	常量和变量必须再使用前声明，用`let`来声明常量，用`var`声明变量。
*	可以再一行中声明多个变量或常量，用逗号隔开


		let maximumNumberOfLoginAttempts = 10
		var currentLonginAttempt = 0
		
		var x = 0.0, y = 0.0, z = 0.0
		

####类型标注 `type annotation`


如果要添加类型标注，需要在常量或者变量名后面加上一个冒号和空格，然后加上类型名称。

	var welcomeMessage: String

####常量和变量的命名

*	可以用任何喜欢的字符作为常量和变量名，包括Unicode字符
*	常量与变量名不能包含`数学符号`，`箭头`，`保留字符`，`连线`，`制表符`。不能以数字开头。
*	一旦你将常量和变量声明为确定类型，你就不能用相同的名字再次声明，或者改变其存储值的类型，也不能将常量与变量进行相互转换

		如果你需要使用与Swift保留关键字相同的名称作为常量或者变量名，你可以使用反引号（`）将关键字包围的方式将其作为名字使用。
		无论如何，你应当避免使用关键字作为常量或变量名，除非你别无选择。

####输出常量和变量

*	Swift 使用 `println`来输出当前的常量或变量的值
*	另一种函数叫 `print` 唯一的区别是再输出内容后不会换行
*	Swift 用字符串插值（`string interpolation`）的方式把常量名或变量名当作占位符加入到长字符串中。

		var friendlyWelcome = "Hello!"
		println("The current value of friendlyWelcome is \(friendlyWelcome)")

####注释

* 	可以用 `//` 		进行单行注释
* 	可以用 `/**/` 	进行多行注释
* 	Swit的多行注释可以嵌套

		// 这是一个注释
		
		/* 这是一个,
		多行注释 */
		
		/* 这是第一个多行注释的开头
		/* 这是第二个被嵌套的多行注释 */
		这是第一个多行注释的结尾 */
		
####分号

*	Swift不强制要求再每条语句后使用分号 `;`, 也可以根据习惯使用分号
*	在一行写多条语句的时候必须使用分号

####整数

*	整数就是没有小数部分的数字，整数可以是`有符号`（正、负、零）或 `无符号`（正、零）。
*	Swift提供了8、16、32、64位的有符号和无符号的整数类型。 例： UInt8 Int32等。
*	范围可以使用 `min` `max` 属性来获取对应类型的最大值和最小值
		
		let minValue = UInt8.min
		let maxValue = UInt8.max

*	`Int` 在32位平台上, Int 和 Int32 长度相同；在64位平台上 Int 和 Int64长度相同。

####浮点数	

*	浮点数是有小数部分的数字
*	`Double`表示64位浮点数；`Float`表示32位浮点数
*	`Double`精确度很高，至少有15位数字，而`Float`最少只有6位数字。

####类型安全和类型推测
 
*	Swift是类型安全的语言
*	没有类型将会根据初始值进行类型推断
*	如果给出的值是整数如 `42`并且没有类型推断，Swift会推测类型常量为Int
*	如果给出的值是浮点数如 `3.14159` Swift会推测类型常量为Double
*	如果表达式中同时出现了 Int 和 Double Swift会推测为Double类型

####数值型字面量

整数字面量：
*	十进制，没有前缀
*	二进制，0b
*	八进制，0o
*	十六进制，0x

指数
* 十进制exp相当于 基数于10^exp的乘积, 1.25e2 表示 1.25x10^2, 1.25e-2 表示 1.25x10^-2
* 十六进制exp相当于 基数于2^exp的乘积， 0xFp2 表示 15x2^2 0xFp-2表示 15*2^-2

额外的格式

可以使用额外的零、下划线来增强可读性例：
	
	let paddedDouble = 000123.456
	let oneMillion = 1_000_000
	let justOverOneMillion = 1_000_000.000_000_1

####数值类型转换

#####整数转换

*	不同整数类型的变量和常量可以存储不同范围的数字。如果数字超过了变量可存储的范围，编译时会报错。

		let cannotBeNegative: UInt8 = -1
		// UInt8 类型不能存储负数，所以会报错
		let tooBig: Int8 = Int8.max + 1
		// Int8 类型不能存储超过最大值的数，所以会报错
*	不能进行隐式转换。
*	将一种数字类型转换为另外一种，你要用当前值初始化一个期望类型的新数字，这个数字的类型就是你的目标类型。

		let twoThousand: UInt16 = 2_000
		let one:UInt8 = 1
		let twoThousandAndOne = twoThousand + UInt16(one)

*	SomeType(ofInitialValue)是调用Swift构造器传入一个初始值的默认方法。注意，你并不能传入任意类型的值，只能传入类型内部有对应构造器的值。不过可以扩展现有的类型来让它可以接收其他类型的值。

#####整数和浮点数转换
*	跟不同类型的整数一样 如果类型不同将无法进行相互计算
*	字面量的`3`可以直接和字面量`0.1415926`相加，因为数字字面本身没有明确的类型，他们的类型只在编译器需要求值的时候被推测。

####类型别名

可以使用`typealias`关键字来定义别名，与C语言的typedef作用相似

####布尔值

`Bool` 值有 `true` `false`

####元组

`tuples`

*	可以把任意顺序的类型组合成一个元组，这个元组可以包含所有类型。
*	元组的内容可以分解成单独的常量和变量
*	如果值需要一部分元组值，分解的时候可以把要忽略的部分用 `_` 标记

		let http404Error = (404, "Not Found")
		// http404Error 的类型是 (Int, String)，值是 (404, "Not Found") 元组
		
		let (statusCode, statusMessage) = http404Error
		// 分解元组
		
		let(justTheStatusCode, _) = http404Error
		// 忽略部分值

*	可以在定义元组的时候给单个元素命名
	
		let http200Status = (statusCode: 200, description: "OK")
		
		//通过元素名使用元组元素
		println("The status code is \(http200Status.statusCode)")
		// 输出 "The status code is 200"
		println("The status message is \(http200Status.description)")
		// 输出 "The status message is OK"
*	元组可以作为返回值
*	元组在临时组织的时候很游泳，但并不适合创建复杂的数据结构。如果你的数据结构并不是临时使用，应该使用类或者结构体而不是元组


####可选值

使用可选来处理`有可能缺失`的情况可选表示：

*	有值，等于x
*	没有值

		Objective-C 并没有可选这个概念。
		最接近可选值的特性便是一个Objctive-C中的对象返回`nil`表示缺少一个合法对象。
		然而对于非对象的 结构体 基本类型 枚举则不起作用，对于这些值Objective-C一般会返回一个特殊值来暗示缺失，这种缺失需要调用者知道并进行识记。
		Swift的可选值没有此限制（其实类似C#中的可选值概念）
		

例：
		
		let possibleNumber = "123"
		let convertedNumber = possibleNumber.toInt()
		// convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"

因为`toInt`方法可能会失败，所以用`Int?`而不是`Int` , 自己写程序时要注意此点。

#####if语句以及强制解析

*	使用`if`语句来判断看一个可选值是否包含值，如果有值结果识`true`；如果没有值，结果是`false`。
*	确定可选值有值之后可以在名字的后面加入`!`来获取值。 强制解析一个不存在的值会造成运行时错误，必须要确定可选值包含非nil的值再进行使用

#####可选绑定

使用可选绑定（optional binding）来判断可选是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在`if`和`while`语句中来对可选的值进行判断并把值赋给一个常量或者变量。

	if let actualNumber = possibleNumber.toInt() {
	
    println("\(possibleNumber) has an integer value of \(actualNumber)")
    
	} else {
	
    println("\(possibleNumber) could not be converted to an integer")
    
	}
	
	// 输出 "123 has an integer value of 123"

#####nil

你可以给可选变量赋值为`nil`来表示它没有值

*	nil不能用于非可选的变量和常量
*	Swift的nil和Object－C中nil并不一样。在Objective-C中，`nil`是一个指向不存在对象的指针。在Swift中，`nil`不是指针是一个确定的值，用来表示值缺失。任何类型的可选都可以被设置为`nil`,不只是对象类型。

#####隐式解析可选

有时候在程序架构中，第一次被赋值之后，可以确定一个可选总会有值。在这种情况下，每次都要判断和解析可选值是非常低效的，因为可以确定它总会有值。

这种类型的可选被定义为隐式解析可选（implicitly unwrapped optionals）。把想要用作可选的类型的后面的问号（`String?`）改成感叹号（`String!`）来声明一个隐式解析可选。

	如果一个变量之后可能变成nil的话请不要使用隐式解析可选类型。
	如果你需要在变量的生命周期中判断是否是nil的话，请使用普通可选类型。


####断言

assert(Bool, String) 与其他语言的断言并没有什么两样。


		



