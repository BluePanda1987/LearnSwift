###Swift

#####函数与类方法的区别

与函数相比，类的方法有一个重要的不同点。函数的参数名只在函数内部使用，而方法的参数名也在调用这个方法时使用（第一个参数除外）。默认情况下，一个方法的参数名在调用时和在方法内部是一样的。你也可以指定一个只在方法内部使用的名称。

#####赋值以及操作
*	在对待可选值时，你可以在调用方法、访问属性、下标等操作前使用 ?。如果 ? 之前的值为 nil，所有 ? 之后的东西都会被忽略，整个表达式的值就是 nil。否则的话 ? 后面的操作就作用在这个打开的值上。在这两种情况下，整个表达式的值都是可选值。
*	let convertedRank = Rank.fromRaw(50) 如果转换失败将会是 nil , 由此推断所有的失败操作类型都会是 nil
*	赋值操作 中等号的左右两边要留有空格 其他操作的左右两边也最好留有空格

#####String
*	object 转换为 string String(object)
*	objcet 格式化在 string中 let stringObject = "string object convert \(object)"
*	hasPrefix() hasSuffix() 不接受Character 方法
*	uppercaseString lowercaseString 属性

#####Struct
结构支持类的很多行为和特性，包括方法、构造方法等等。结构和类的最重要差别之一是当结构在程序中传递时总是被复制，而类被传递时总是按引用传递。

请注意let 声明的常量是不能够调用 mutating 声明的函数进行调用

#####枚举
*	枚举类型可以是 整型 浮点型 字符串 元组
*	已知类型的enum 可以省略enum名称 例 .Three
*	enum 中可以定义函数
*	enum 中的枚举如果不完整必须插入default
*	使用 toRaw 和 fromRaw 方法来在原始值和枚举值之间转换 

#####Protocol
*	协议中的属性必须指定 是否有get set 必须指定属性类型
*	mutating关键字 表示改变struct 结构的方法 结构中需要指定该关键字
*	在你操作协议类型的值时，协议之外的方法是不可用的。
*	协议可以应用给枚举

#####extension	
可以扩展协议、属性、方法 


#####泛型
*	范型可以应用于函数，方法，类，枚举，结构。
*	用where作为范型约束

#####Collection
######Array
*	定义 `var array = []` `var array:Type[] = []` `var array = [object1, object2, object3 ...]` `var array = Array()`
*	数量`count`属性
*	增:`append(object)`方法、`+=`重载
*	删:`removeAtIndex(index)``removeLast()`
*	改: `array[index] = newValue` `array[index_1 .. index2] = [value1, value2]`后面元素多时会插入后面元素之前 `array[index_1 ... index2] = [value1, value2]` 后面元素多时会覆盖数组后面的元素 `insert(value, atIndex)`
*	查: `for object in array` `for (index, object) in enumerate(array)`

######Dictionary
*	定义` var dictionary = [:]` `var dictionary<KeyType : ValueType> = [:]` `var dictionary = [key1:value1, key2:value2, ...]` `var dictionary = Dictionary()`
*	数量 `count`属性
*	增: `dictionary[key] = value`
*	删: `dicitionary[key] = nil` `dicitionay.removeValueForKey[key]`
*	改: `dictionary[key] = value` `dictionary.updateValue(newValue, forKey:key)`
*	查: `for (key, value) in dictionary` `for key in dictionary.keys` `for value in dictionary.values` `Array(dictionary.keys)` `Array(dictionary.values)` 

#####疑问
*	是否在任何已经知道值的类型时都可以使用这种缩略形式。例:.Three
*	构造Struct必须要初始化所有属性
*	Class 中的属性是否必须在构造中必须初始化或必须初始化？
*	Class 中的set 是否能跟 willSet didSet 同时出现？为什么
*	enum  中case的意义是什么
*	范型中的关键字 :Sequence .GeneratorType.Element :Equatable 是协议么 T.GeneratorType.Element == U.GeneratorType.Element 是==的重载么？
*	Swift中的 隐式解析可选感觉十分鸡肋，如果设置成为隐式解析可选还不能nil的话跟使用普通变量有什么区别呢？
*	16进制中如果出现 0x0e2是按照什么规则计算的?
*	typealias 只能定义类型的别名吗？
*	Swift 中字符串的长度 与 NSString 的字符串长度 utf16count
*	常量状态下的数组大小不可变值可变？
*	let yenSign: Character = "$" 为什么输出是枚举


####单词
`extension` `protocol` `Character` `Integer` `enumerate`


