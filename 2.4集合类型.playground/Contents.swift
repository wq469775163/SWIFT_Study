//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 往字典里添加键值对，
  [dic setObject:@(0) forKey:@"level"]; ==》dic["level"] = (0) 赋值操作，不是取出来
 wift 语言提供Arrays、Sets和Dictionaries三种基本的集合类型用来存储集合数据。数组（Arrays）是有序有重复数据的集。集合（Sets）是无序无重复数据的集。字典（Dictionaries）是无序的键值对的集。
 Swift 语言中的Arrays、Sets和Dictionaries中《存储的数据值类型必须明确》。这意味着我们不能把不正确的数据类型插入其中。同时这也说明我们完全可以对取回值的类型非常自信
 如果创建一个Arrays、Sets或Dictionaries并且把它分配成一个变量，这个集合将会是可变的。这意味着我们可以在创建之后添加更多或移除已存在的数据项，或者改变集合中的数据项。如果我们把Arrays、Sets或Dictionaries分配成常量，那么它就是不可变的，它的大小和内容都不能被改变。
 在我们不需要改变集合的时候创建不可变集合是很好的实践。如此 Swift 编译器可以优化我们创建的集合。
 var shoppingList = ["A","B","C","D","E","F",6] as [Any] 数组存的类型可以这样写成any
 
 

 数组(Arrays)
 数组使用有序列表存储同一类型的多个值。相同的值可以多次出现在一个数组的不同位置中
 1.创建一个空数组
 var someInts = [Int]() 通过构造函数的类型
 var someIntsTwo:[Int] = []
 someInts.append("3") strAppend.append("3") （目前数组字符串都可以append元素）
 2.创建一个带有默认值的数组
 var threeDoubles = Array(repeating: 0.0, count: 3)
 // threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]
 3.通过两个数组相加创建一个数组
 var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
 // anotherThreeDoubles 被推断为 [Double]，等价于 [2.5, 2.5, 2.5]
 var sixDoubles = threeDoubles + anotherThreeDoubles
 // sixDoubles 被推断为 [Double]，等价于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
 
 4.用数组字面量构造数组
 var shoppingList: [String] = ["Eggs", "Milk"] = var shoppingList = ["Eggs", "Milk"]
 访问和修改数组
 var shoppingList = ["Eggs", "Milk"]
 
1. print("The shopping list contains \(shoppingList.count) items.")
 // 输出 "The shopping list contains 2 items."（这个数组有2个项）
 2.if shoppingList.isEmpty {
 print("The shopping list is empty.")
 } else {
 print("The shopping list is not empty.")
 }
 // 打印 "The shopping list is not empty."（shoppinglist 不是空的）
 //使用布尔属性isEmpty作为一个缩写形式去检查count属性是否为0 
 3.shoppingList.append("Flour")
 append(_:)方法在数组后面添加新的数据项,和String一样的
 4.shoppingList += ["Baking Powder"]
 // shoppingList 现在有四项了
 shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
 // shoppingList 现在有七项了 除此之外，使用加法赋值运算符（+=）也可以直接在数组后面添加一个或多个拥有相同类型的数据项：
 5.var firstItem = shoppingList[0]  直接使用下标语法来获取数组中的数据项，把我们需要的数据项的索引值放在直接放在数组名称的方括号中 和字符串语法一样，只是字符串不能用int类型
《
 6. shoppingList[0] = "Six eggs"
 // 其中的第一项现在是 "Six eggs" 而不是 "Eggs"
 我们也可以用下标来直接改变某个已有索引值对应的数据值
 7. shoppingList[4...6] = ["Bananas", "Apples"]
 // shoppingList 现在有6项 ，由7项变为6项了
 还可以利用下标来一次改变一系列数据值，即《使新数据和原有数据的数量是不一样的》
 》
 8.数组的insert(_:at:) remove(at:) 和字符串用法一样的
 把数组中的最后一项移除简单方法：removeLast()
 
 9.
 for item in shoppingList {
 print(item)
 }
 // Six eggs
 // Milk
 // Flour
 // Baking Powder
 // Bananas
 我们可以使用for-in循环来遍历所有数组中的数据项
 for (index, value) in shoppingList. enumerated() {
 print("Item \(String(index + 1)): \(value)")
 }
 // Item 1: Six eggs
 // Item 2: Milk
 // Item 3: Flour
 // Item 4: Baking Powder
 // Item 5: Bananas
 如果我们同时需要每个数据项的值和索引值，可以使用enumerated()方法来进行数组遍历。enumerated()返回一个由每一个数据项“索引值”和“数据值”组成的“元组”。和OC 【array enumerate...】类似
 
 
 集合（Sets）
 集合(Set)用来存储相同类型并且没有确定顺序的值。当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组。
 一个类型为了存储在集合中，该类型必须是可哈希化的--也就是说，该类型必须提供一个方法来计算它的哈希值。一个哈希值是Int类型的，相等的对象哈希值必须相同，比如a==b,因此必须a.hashValue == b.hashValue。
 Swift 的所有基本类型(比如String,Int,Double和Bool)默认都是可哈希化的，可以作为集合的值的类型或者字典的键的类型。没有关联值的枚举成员值(在枚举有讲述)默认也是可哈希化的。
 1. var letters = Set<Character>() 创建和构造一个空的集合
 2. var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] 和数组一样的
 3.使用布尔属性isEmpty作为一个缩写形式去检查count属性是否为0：和数组一样的
 4.insert remove （如果该值是该Set的一个元素则删除该元素并且返回被删除的元素值，否则如果该Set不包含该值，则返回nil）
    removeAll（）
<<
  5. if favoriteGenres.contains("Funk") 
  6.
    for genre in favoriteGenres {
    print("\(genre)")
    }
 7.for genre in favoriteGenres.sorted() {
  print("\(genre)")
  }
 Swift 的Set类型没有确定的顺序，为了按照特定顺序来遍历一个Set中的值可以使用sorted()方法，它将返回一个有序数组，这个数组的元素排列顺序由操作符'<'对元素进行比较的结果来确定.(和数组的enumerate)
 >>
集合操作
基本集合操作（具体还是看图吧，记住是通过两个集合的比较““创建””一个新的集合）
集合成员关系和相等 (也是看图吧，记住是比较两个集合返回BOOL值）
 
 
 字典
 Swift 的Dictionary类型被桥接到Foundation的NSDictionary类。
 isEmpty count 和set array一样的
 1.airports["LHR"] = "London" // airports 字典现在有三个数据项 
 airports["LHR"] = "London Heathrow"
 // "LHR"对应的值 被改为 "London Heathrow
 airports["LHR"] 如果没有key就在键值对，有key就更新键值对
 2.updateValue(_:forKey:)方法在这个键不存在对应值的时候会设置新值或者在存在时更新已存在的值（对字典的作用，一样有就更新，没有就添加），返回一个可选类型的旧值。（有就存在，没有就是nil，反正就是可选类型）
 if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")
 if let airportName = airports["DUB"]
 都是一样的。 airports["DUB"] airports.updateValue("Dublin Airport", forKey: "DUB")更新字典，返回都是可选类型，update有值就是旧值，索引就不存在旧值不旧值，就是取出来的值。
 使用下标语法来通过给某个键的对应值赋值为nil来从字典里移除一个键值对
 airports["APL"] = nil  // APL对应的键值对现在被移除了
if let removedValue = airports. removeValue(forKey: "DUB")
 removeValue(forKey:)方法也可以用来在字典中移除键值对。这个方法在键值对存在的情况下会移除该键值对并且返回被移除的值或者在没有值的情况下返回nil：
 字典遍历
 for (airportCode, airportName) in airports {
 print("\(airportCode): \(airportName)")
 }
 我们可以使用for-in循环来遍历某个字典中的键值对。每一个字典中的数据项都以(key, value)元组形式返回，并且我们可以使用临时常量或者变量来分解这些元组：
 for airportCode in airports.keys {
 print("Airport code: \(airportCode)")
 }
 let airportCodes = [String](airports.keys)
 // airportCodes 是 ["YYZ", "LHR"]
 如果我们只是需要使用某个字典的键集合或者值集合来作为某个接受Array实例的 API 的参数，可以直接使用keys或者values属性构造一个新数组
 Swift 的字典类型是无序集合类型。为了以特定的顺序遍历字典的键或值，可以对字典的keys或values属性使用sorted()方法。(无序到有序)
 */



let characterArray: [Character] = ["A","B","C","D"]

for index in characterArray {
    print("\(index)")
}

var someInts = [Int]()
someInts.append(3)
someInts = []
var strAppend:String = "ww"
strAppend.append("3")
var someIntsTwo:[Int] = []

var threeDoubles = Array(repeating: 2.0, count: 3)
var shoppingList = ["A","B","C","D","E","F",6] as [Any]
for item in shoppingList {
    print(item)
}

for (index,value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}


var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports["LHR"] = "London"
print(airports)



