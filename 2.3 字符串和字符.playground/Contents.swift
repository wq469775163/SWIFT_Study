//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
 问题：
 1.每一个字符串都是由编码无关的 Unicode 字符组成，并支持访问字符的多种 Unicode 表示形式（representations）。
 2.for index in greeting.characters.indices {
    print("\(greeting[index])")
 } for in 不是太理解，包含全部索引的范围(Range)
 3.字符串的 Unicode 表示形式 这部分没懂，先过去把。再读文档也是浪费时间效率低
 
 
 
 定义：字符串是例如"hello, world"，"albatross"这样的有序的Character（字符）类型的值的集合，通过String类型来表示。
 
 1.初始化空字符串
 要创建一个空字符串作为初始值，可以将空的字符串字面量赋值给变量(常量也行)，也可以初始化一个新的String实例：
 您可以通过检查其Bool类型的isEmpty属性来判断该字符串是否为空：
 let emptyString = ""
 var anotherEmptyString = String()
 if emptyString.isEmpty {
 print("Nothing to see here")
 
 2.字符串是值类型
 Swift 的String类型是值类型。 如果您创建了一个新的字符串，那么当其进行常量、变量赋值操作，或在函数/方法中传递时，会进行值拷贝。 任何情况下，都会对已有字符串值创建新副本，并对该新副本进行传递或赋值操作
 您可通过for-in循环来遍历字符串中的characters属性来获取每一个字符的值：
 通过标明一个Character类型并用字符字面量进行赋值，可以建立一个独立的字符常量或变量   let exclaMark:Character = "!"
 字符串可以通过传递一个值类型为Character的数组作为自变量来初始化：
 您可以用append()方法将一个字符(字符串)附加到一个字符串变量的尾部.
 注意：您不能将一个字符串或者字符添加到一个已经存在的字符变量上，因为字符变量只能包含一个字符。
 
 3 Unicode 标量
 Swift 的String类型是基于 Unicode 标量 建立的。 Unicode 标量是对应字符或者修饰符的唯一的21位数字
 字符串字面量可以包含以下特殊字符：
 转义字符\0(空字符)、\\(反斜线)、\t(水平制表符)、\n(换行符)、\r(回车符)、\"(双引号)、\'(单引号)。
 Unicode 标量，写成\u{n}(u为小写)，其中n为任意一到八位十六进制数且可用的 Unicode 位码。
 let blackHeart = "\u{2665}" 字符串字面量包括unicode标量
 可扩展的字形群集
 每一个 Swift 的Character类型代表一个可扩展的字形群。
 
 4 访问和修改字符串
 4.1 字符串索引 不同的字符可能会占用不同数量的内存空间，Swift 的字符串不能用整数(integer)做索引。
 使用startIndex属性可以获取一个String的第一个Character的索引。使用endIndex属性可以获取最后一个Character的后一个位置的索引。因此，endIndex属性不能作为一个字符串的有效下标。如果String是空串，startIndex和endIndex是相等的。
 通过调用 String 的 index(before:) 或 index(after:) 方法，可以立即得到前面或后面的一个索引。您还可以通过调用 index(_:offsetBy:) 方法来获取对应偏移量的索引，
     eg:greeting[greeting.startIndex]
 4.2 插入和删除 (insert插入的是字符类型 remove这个两个关键字)
 您可以使用 insert(_:at:)、insert(contentsOf:at:)、remove(at:) 和 removeSubrange(_:) 方法在任意一个确认的并遵循 RangeReplaceableCollection 协议的类型里面，如上文所示是使用在 String 中，您也可以使用在 Array、Dictionary 和 Set 中。
 
 5.比较字符串
 Swift 提供了三种方式来比较文本值：字符串字符相等、前缀相等和后缀相等
 字符串/字符可以用等于操作符(==)和不等于操作符(!=)
 通过调用字符串的hasPrefix(_:)/hasSuffix(_:)方法来检查字符串是否拥有特定前缀/后缀，两个方法均接收一个String类型的参数，并返回一个布尔值，布尔值所以一般和if一起用
 
 */
let emptyString = ""
var anotherEmptyString = String()
if emptyString.isEmpty {
    print("Nothing to see here")
}
for character in "Dog!🐶".characters {
    print(character)
}

let exclaMark:Character = "!"

let catCharacter: [Character] = ["C","a","t","y"]
let catString = String(catCharacter)
print(catString)

var welcome:String = "qwe"

let exMark:Character = "!"

welcome.append(catString)

let mul = 3;
let message = "\(mul) wwwww"

let wisewords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSign = "\u{2665}"



let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(greeting.startIndex, offsetBy: 6)]


for index in greeting.characters.indices {
    print("\(greeting[index])")
}


var welcomeStr = "hello"
welcomeStr.insert("!", at: welcomeStr.endIndex)
welcomeStr.insert(contentsOf: " world".characters, at: welcomeStr.index(before: welcomeStr.endIndex))

welcomeStr.remove(at: welcomeStr.index(before: welcomeStr.endIndex))
print(welcomeStr)

welcomeStr.removeSubrange(welcomeStr.index(welcomeStr.endIndex, offsetBy: -6)..<welcomeStr.endIndex)
print(welcomeStr)


welcomeStr.hasPrefix("aaa")
welcomeStr.hasSuffix("o")

let dogString = "Dog!!🐶"

for codeUnit in dogString.unicodeScalars {
  print("\(codeUnit)")
}
