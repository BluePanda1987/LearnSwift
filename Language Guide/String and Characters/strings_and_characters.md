###Strings and Characters

####简介

*	字符串是 Characters 的有序集合 通过 `String` 表示
*	可以用 `+` 进行字符串拼接
*	Swift字符串是使用Unicode的
*	Swift中的 String 与 Object-C 中的  `NSString` 进行了无缝的桥接，可以直接互相使用


####字符串的字面量

字符串字面量是由双引号(" ")包裹着的具有固定顺序的文字字符集。

特殊字符：
*	转意字符 `\0`空字符 `\r`回车 `\n`换行 `\t`水平制表符 `\"`双引号 `\'`单引号
*	单字节Unicode变量 	\xnn
*	双子字节				\unnnn
*	四字节				\Unnnnnnnn


####空字符串

创建空字符串
	
	let emptyString = ""
	let anotherEmptyString = String()

检测空字符串

	if emptyString.isEmpty() {
	
	}
	
####字符串可变性
	
*	变量可以修改常量不可修改
*	Objective-C中 NSString 不可修改 NSMutableString可以修改。


####字符串是值类型

*	Swift中的字符串是值类型
*	Objective-C中的NSString是引用类型

####使用字符

由于字符串的定义是字符的集合，所以可以用`for-in`来遍历字符串

	for character in "Dog" {
	
	}
	
####字符数量

*	使用全局的countElements函数
*	NSString 的 length诗句是给予UTF-16的单元数字 需要注意

####字符串与字符拼接

*	可以使用 `+`
*	可以使用 `+=`
*	不能用Character 来存储拼接后的变量

####字符串插值

*	使用`\(value)`的方式插入字符串
*	卸载括号中的表达式不能包含非转意的双引号、反斜杠。不能包含回车和换行符。需要注意

####字符串比较

字符串比较在Swift中提供三种方式

*	字符串相等使用 `==` 比较
*	前缀相等 `hasPrefix`
*	后缀相等 `hasSuffix`

大写和小写字符串

*	大写 `uppercaseString`
*	小写	`lowercaseString`


####Unicode

关键属性： `.utf8` `.utf16` `.unicodeScalars` `.unicodeScalars.value`


