###A Swift Tour

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


#####Control Flow

使用`if`和`switch`作为条件语句，用`for-in`,`for`,`while`, 和 `do-while` 实现循环语句。 判断条件和循环条件可以不用圆括号，但主体语句两侧必须使用花括号。

	let individualScores = [75, 43, 103, 87, 12]
	
	var teamScore = 0
	
	for	scroe in individualScores {
	
		if scroe > 50 {
			
			teamScroe += 3		
		}	
		else {
		
			teamScroe += 1
		}
	}

在 if 语句中，条件必须是一个 bool 表达式， 这意味着 if scroe { ... } 这样的语句是错误的， 因为它并没有隐含着 scroe 与 0 的比较。

你可以联用 **if** 和 **let** 操作可空的值。这些值是**可选值**它们要么一个值，要么用nil表示。用一个 `?`符号在变量符号之后进行标记以表示该值是**可选值**。 

	
	var optionalValue:String? = "Hello"
	optionalValue == nil;

	var optionalName:String? = "Johnny Appleessed"
	var greeting = "Hello"

	if let name = optionalName {
    
    	greeting = "Hello, \(name)."
	}
	else {
    
    	greeting = "Hello somebody."
	}

如果可选值是nil，条件为false 在花括号中的代码将被跳过。如果不是空的可选值的值将会使得 let之后的常量可用，并赋值给它， 被赋值的常量将在代码块中变得可用。（将上面的代码更改，在else中试图使用 name 变量）

	if let name = optionalName {
    
    	greeting = "Hello, \(name)."
	}
	else {
	
    	greeting = "Hello somebody.\(name)"
	}
在第二行代码中你将得到未定义错误：error: use of unresolved identifier 'name'
    greeting = "Hello somebody.\(name)"

Switch语句支持各种数据类型，各种各样的比较操作。数据类型不再限制于整型变量，比较操作也不仅仅只是测试相等。

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

执行switch匹配的条件的语句之后程序将会从Switch中跳出。执行语句不会继续运行下一个case，在每条case语句之后不必写出break语句。

你可以通过在 `for-in` 中提供一对名字来表示每对 key-value 来迭代访问 Dictionary中的每一个元素。 

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




	