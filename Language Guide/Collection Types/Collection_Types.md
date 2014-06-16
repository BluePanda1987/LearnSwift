###集合类型

####数组

#####概览
*	与Objective-C不同，在Swift中存储之前必须明确类型
*	类型可以是值类型
*	元素类型与数组要求的类型不一致时不能够进行插入

##### 数组的简单语法
有以下两种形式， 推荐使用后一种

*	Array<SomeType>
*	SomeType[]  

#####数组的构造语句

有类型

	var shoppingList: String[] = ["Eggs", "Milk"]
	
无类型

	var shoppingList = ["Eggs", "Milk"]


#####访问和修改数组

*	用`count`来获取元素数量
*	用`isEmpty`代替检查元素个数是否为0
*	可以使用`append`添加新数据
*	也可以用`+=`添加新数据
*	用下标获取数据
*	索引以`0`开始
*	不能用索引在数组尾部添加数据
*	用`insert(atIndex:)`在某个索引`之前`添加数据
*	用`removeAtIndex`来移除某一项
*	可以使用 `removeLast`移除最后一项

#####数组的遍历

*	可以使用`for-in`循环来遍数组中的数据项
*	可以使用`enumerate`返回由数据索引和数据值组成的元组，进行遍历。

#####创建构造一个数组

*	用构造语法构造一个特定类型的数组 

		var someInts = Int[]()
*	如果上下文提供了类型信息可以使用`[]`代表空数组

		someInts = []
*	可以创建特定大小并数据都被默认的构造方法(count:,repeatedValue:)

		var threeDoubles = Double[](count: 3, repeatedValue:0.0)
*	使用`+`组合已经存在的相同类型的数组
｀
####字典

#####与OC语言字典对比

*	OC字典的键－值 是不需要提供任何关于这些对象的本质信息的
*	Swift`特定的字典`中键－值类型都必须明确，可以利用类型推断或显示的类型标注
*	Swift字典使用Dictionary<KeyType, ValueType>
*	Swift字典Key要求是可哈希的所有Swift的基本类型都是可哈希的。未关联值的枚举也是可哈希的。

#####字典的字面变量

一个键值对的key和value使用冒号分割,例：`key:value`。多个键值对之间用逗号间隔，用方括号括起。

	[key 1: value 1, key 2: value 2, key 3: value 3]
	
#####读取和修改字典

*	通过`count`获取数量
*	使用 `key = value` 添加 修改 键值对
*	可以使用 `updateValue(forKey:)` 添加修改键值对 该方法会返回旧值的可选值
*	可以使用下标语法来通过给某个键的对应值赋值为nil来从字典里移除一个键值对：
*	相对应的可以用 `removeValueForKey`移除键值对

#####字典的遍历

*	用`for-in`遍历
*	用 `keys`属性 和 `value`属性 分别获取键－值的可遍历集合
*	可以使用 Array 来构建 key 和 value 的数组


##### 创建空字典

*	使用语法构造构建空字典

		var namesOfIntegers = Dictionary<Int, String>()
*	当上下文信息足够时可以使用 `[:]` 构建空数组


###集合的可变性

可以变和不可变由 变量常量的声明控制。 常量状态下的字典是不可改变的。常量状态下的数组大小不可变值可变？