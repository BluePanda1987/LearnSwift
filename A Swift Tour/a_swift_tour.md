####A Swift Tour

通常建议新语言的第一个程序打印出 Hello World。在SWift中我们写下下面的语句：

	println("Hello World")。

如果你写过C 或者 C-ObjectC ，你会发现你用Swift写下的这行代码与它们的语法十分相似。你不需要导入任何单独的类似于输入/输出的或者字符串处理的功能库。代码写在全局范围内作为程序的入口点，所以你不再需要 main() 函数。你也不需要在每条的语句后面添加分号。

这次展示将会给你足够的信息，帮助你用Swift完成各种各样的编程任务。如果你有不明白的地方，一切都会在本书的其他部分进行详细的展示介绍，不要担心。



#####Simple Values

使用 `let` 声明一个常量 使用 `var` 声明一个变量

一个常量的值不必在编译期间被知道，但是你一定要明确的声明一次。你所使用的常量只能一次声明并赋值，但可以在多处使用。

	var myVariable = 42
	myVariable = 50
	let myConstant = 42”

一个变量和常量必须用相同类型的值去赋值。但是你不必明确的写出它们的类型。当你创建一个常量或者变量的时候提供的值可以让编译器推断它们的类型。在上面的例子里编译器推断**myVariable**是一个整形因为它的初始化值是一个整形。


如果初始化值没有提供足够的初始化信息（或者没有初始化值）,制定类型在变量之后并用冒号分隔它们。

	let implicitInteger = 70
	let implicitDouble = 70.0
	let explicitDouble = 70

任何值都不能隐形的转换为另外的类型。如果你需要转换一个值成为其他的类型，为你需要的类型明确的定义一个实例。

	let label = "The width is "
	let width = 70
	let labelWidth = label + String(width)
	
有一个更简单的方法将值包含在字符串之中：将值写在有反斜线在前的圆括号之内，例如：

	let apples = 5
	let oranges = 3
	let appleSummary = "I have \(apples) apples."
	let fruitSummary = "I have \(apples + oranges) pieces of fruit."

创建一个数组或者字典用`[]`符号，通过写在**[ ]**符号中的 index 或者 key 值来存取元素。

	var shoppingList = ["cat fish", "water", "tulips", "blue paint"]
	shoppingList[1] = "bottle of water"
	
	var occupations = ["Malcolm":"Caption", "Kaylee":"Mechainc"]
	occupations["Jayne"] = "Public Relations"
	
创建一个空的数组或字典使用初始化语法：

	var emptyArray = String[]();
	var emptyDictionary = Dictionary<String, Float>()

如果类型信息可以被推断你可以使用**[ ]**写一个空数组，用**[:]**写一个空字典。当你为变量设置一个新值或者为函数传参的时候或许会用到它。

	shoppingList = [] // Went shopping and bought everything.



	