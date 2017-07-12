//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var str1 = "Hello, playground"
print(str)
for index in 1...5
{
    print(index)
}

// 简单值
//使用let来声明常量，使用var来声明变量。常量只能赋值一次，变量可以赋值很多次。
let num: Float = 70.0
let num1: Double = 50
var firstVariable:NSInteger = 50;
firstVariable = 55
let num2:Float = 4

/*
 1.swift 值永远不会被隐式转换为其他类型。如果你需要把一个值转换成其他类型，请显式转换。
在C、Objective-C和Java等其他语言中，整型之间有两种转换方法：
从小范围数到大范围数转换是自动的；(编译器自动完成)
从大范围数到小范围数需要强制类型转换，有可能造成数据精度的丢失
 有一种更简单的把值转换成字符串的方法：把值写到括号中，并且在括号之前写一个反斜杠。
 2.使用方括号[]来创建数组和字典，并使用下标或者键（key）来访问元素。最后一个元素后面允许有个逗号。 
  let emptyArray1: [String] = []
*/

let label = "The width is "
let width = 96
let widthLabel = label + String(width)

let apples: NSInteger = 3
let applesSummary = "I have \(apples) apples."

let numMoney: Double = 20.00
let spearkToTom = "I Have \(numMoney) money"

var shoppingList: [NSString] = ["catfish","water","blue","red",]
shoppingList[1] = "again Value"
print(shoppingList)

var Diction = [
    "key1": "value1",
    "key2": "value2"
]
print(Diction)

let emptyArray = [String]()
let emptyDictionary = [String:NSInteger]()

let emptyArray1: [String] = []

shoppingList = []
print(shoppingList)
Diction = [:]


// 控制流
/*
 1.使用if和switch来进行条件操作，使用for-in、for、while和repeat-while来进行循环。包裹条件和循环变量括号可以省略，但是语句体的大括号是必须的。在if语句中，条件必须是一个布尔表达式——这意味着像if score { ... }这样的代码将报错，而不会隐形地与 0 做对比。
 Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中，nil 是一个指向不存在对象的指针。在 Swift 中，nil 不是指针——它是一个确定的值，用来表示值缺失。
    任何类型的可选状态都可以被设置为 nil，不只是对象类型。
    如果你的代码中有常量或者变量需要处理值缺失的情况，请把它们声明成对应的可选类型。
    nil不能用于非可选的常量和变量。
 
 var serverResponseCode: Int? = 404
 serverResponseCode 包含一个可选的 Int 值 404
 
 serverResponseCode = nil
 serverResponseCode 现在不包含值
 
 你可以一起使用if和let来处理值缺失的情况。
 2. ??
 空合运算符(a ?? b)将对可选类型a进行空判断，如果a包含一个值就进行解封，否则就返回一个默认值b.这个运算符有两个条件:
 
 表达式a必须是Optional类型
 默认值b的类型必须要和a存储值的类型保持一致

 3. switch支持任意类型的数据以及各种比较操作——不仅仅是整数以及测试相等。
 运行switch中匹配到的子句之后，程序会退出switch语句，并不会继续向下运行，所以不需要在每个子句结尾写break。(自己直接跳出这个循环了)
 4.你可以使用for-in来遍历字典，需要两个变量来表示每个键值对。字典是一个无序的集合，所以他们的键和值以任意顺序迭代结束。
 5.while   repeat while （do while）... ..<
*/
let ListArray:[NSInteger] = [75,28,43,55,66]
var score = 50

for index in ListArray
{
    if index < 50
    {
        score += 3
    }
    else
    {
        score += 5
    }
}
print(score)

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionName: String?

var greeting = "Hello!"
//如果变量的可选值是nil，条件会判断为false，大括号中的代码会被跳过。如果不是nil，会将值解包并赋给let后面的常量，这样代码块中就可以使用这个值了。
if let name = optionName
{
    greeting = "hello,\(name)"
}
else
{
    greeting = "no select Value"
}
print(greeting)

let nickName: String? = nil
let fullName: String = "John Appleseed"
let allInformation = "hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable
{
    case "red":
        print("redred")
    case "black":
        print("black")
    case "red pepper":
        print("red pepperred pepper")
    default:
        print("hihihi")
}

let interestingNumber:[String: [NSInteger]] = [
    "A":[2,5,7,9],
    "B":[5,8,9,46,101],
    "C":[2,3,100]
]
var largest1 = 0
var largestkind = "A"

// 没理解
for (kinds,numbers) in interestingNumber
{
    // 取出来其中的一项而已,不是总的数组
    print(kinds,numbers)
    for number in numbers
    {
        if number > largest1
        {
            largest1 = number
            largestkind = kinds
        }
    }
    
}
print(largest1,largestkind)


var n = 2
while n < 100
{
    n = n * 2
}
print(n)

var m = 2
repeat
{
    m = m * 2
}while m < 100

print(m)

var total: NSInteger = 0
for index in 0...4
{
    total += index
}
print(total)

/*
 函数和闭包
 使用func来声明一个函数，使用名字和参数来调用函数。使用->来指定函数返回值的类型。 使用 _ 表示不使用参数标签。
 func funcName(person:String, day:String) -> String
 {
 return "Hello \(person),today is \(day)."
 }
 1.1默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签
 1.2 使用元组来让一个函数返回多个值。该元组的元素可以用名称或数字来表示。
 func calculateStatistics(score: [Int]) -> (min:Int,max:Int,sum:Int)
 1.3 函数可以带有可变个数的参数，(调用的时候可以什么都不传)这些参数在函数内表现为数组的形式：
 1.4 函数可以嵌套。被嵌套的函数可以访问外侧函数的变量，你可以使用嵌套函数来重构一个太长或者太复杂的函数。
    （调用这个函数返回一个函数，用一个变量去接收一下，这个变量其实是个函数，按照格式可以调用这个函数。）
 */

func funcName(person:String, day:String) -> String
{
    return "Hello \(person),today is \(day)."
}
funcName(person: "Tom", day: "Thusday")

func eatGoods(person:String,goods:String) -> String
{
    return "Hello \(person),you eat \(goods)."
}
eatGoods(person: "Tom", goods: "MIle")

func greet(_ person: String,wwww onday: String) -> String
{
    return "Hello \(person),today is \(onday)"
}
greet("www", wwww: "hah")

func sumOf(numbers:Int...) -> Int
{
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    return sum
    
}
sumOf()
let sum = sumOf(numbers: 1,5,8,44)
print(sum)

func makeIncrementer () -> ((Int) -> Int)
{
    func addOne(number : Int) -> Int
    {
        return 1 + number
    }
    return addOne
}
// 返回一个函数，用一个变量去接收一下，这个变量其实是个函数，按照格式可以调用这个函数。
var increment = makeIncrementer()
increment(7)
//makeIncrementer(8)

func hasAnyMatchs(list : [Int] , condition : ((Int) -> Bool)) -> Bool
{
    for number in list
    {
        if condition(number)
        {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool
{
    return number < 10
}
var numbers  = [21,16,58]


numbers.map { (number : Int) -> Int in
    return number * 3
}

numbers.map { (numb:Int) -> Int in
    return numb * 9
}

numbers.map { (number:Int) -> Int in
    
    if number % 2 != 0
    {
        return 0
    }
    else
    {
        return 2
    }
}



