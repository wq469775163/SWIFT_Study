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
/*
 对象和类
 问题
 1：self被用于区别实例变量。
 2: 如果你需要在删除对象之前进行一些清理工作，使用deinit创建一个析构函数。
 3:  super.init(name: name) 这个是什么意思，继承父类的name属性值？还是更改父类的name属性的值
 4: self.radius = radius radius两个 V和L开头
 5: set get 方法里面写的是的属性（其他属性）具体要怎么写？newValue是什么？set方法里面不实现出怎么样？
 6: 如果你不需要计算属性，但是仍然需要在设置一个新值之前或者之后运行代码，使用willSet和didSet。
 7: 处理变量的可选值时，你可以在操作（比如方法、属性和子脚本）之前加?。如果?之前的值是nil，?后面的东西都会被忽略，并且整个表达式返回nil。否则，?之后的东西都会被运行。在这两种情况下，整个表达式的值也是一个可选值。（这章简介基本上都没看会啊，朋友）
 1.创建一个类：使用class和类名。类中属性的声明和常量、变量的声明一样，唯一的区别是他们的上下文是类。同样的类中方法声明和函数的声明也是一样的。创建一个类的实例：在类名后面加上括号。使用点语法来访问实例的属性和方法。
 2.缺少一个构造函数来初始化类实例。使用init来创建一个构造器（init（），正常的参数名：参数类型-- 常量变量名:类型）。创建一个类的实例时候，就像传入函数的参数一样传入构造器的参数。每个属性都必须赋值（  varnumberofSide:Int = 50
        var name: String 无论是通过声明(varnumberofSide)赋值还是通过构造器(name)赋值）。
 3.子类的定义方法：在他们类名后面：父类的名字.可以忽略父类的.子类如果要重写父类的方法的话，需要用override标记——如果没有添加override就重写父类方法的话编译器会报错。编译器同样会检测override标记的方法是否确实在父类中。调用父类的构造器,然后可以修改父类定义的属性值。
 */
class Shape
{
    var numbersides = 0
    let testClassPro = 20
    
    
    func simpleDescriptions() -> String
    {
        return "A shape with \(numbersides) sides"
    }
    
    func testClassMethod(number:NSInteger) -> String
    {
        return "A shape withparameter \(number + 2) sides"
    }
    
}
// 创建一个类的实例
var shape = Shape()
// 直接修改了。（不知道对不对等号左边set方法和OC类似？）
shape.numbersides = 200
var shapeDiscription = shape.simpleDescriptions()
shape.testClassMethod(number: 22)

class NameShape
{
    var numberofSide:Int = 50
    var name: String
    init(name: String)
    {
        self.name = name
    }
    // 声明
    func simpleDescription() -> String
    {
        return "\(name) shape with \(numberofSide) sides"
    }
}
var nameShape = NameShape(name:"WQ")
nameShape.simpleDescription()

class SonShape: NameShape
{
    var sonlenth: Double
    init(sonlenth: Double , name:String)
    {
        self.sonlenth = sonlenth
        super.init(name: name)
        numberofSide = 100;
        
    }
    
    func area() -> Double
    {
        return sonlenth * Double(numberofSide)
    }
    
    
     override func simpleDescription() -> String
    {
        return "Father override"
    }
}
var sonShape = SonShape(sonlenth: 5.2, name:"son")
sonShape.sonlenth
sonShape.area()
sonShape.simpleDescription()
nameShape.simpleDescription()


class Circle: NameShape {
    
    var radius: Double
    var radiusName: String
    init(radius: Double,radiusName: String) {
        self.radius = radius
        self.radiusName = radiusName
        super.init(name: radiusName)
        
    }
    func area() -> Double
    {
        return radius * radius
    }
    
    override func simpleDescription() -> String
    {
        return "A B is \(radius)"
    }
}

var circle = Circle (radius: 25.0, radiusName: "name1")
circle.area()
circle.simpleDescription()

class EquilateralTriangle: NameShape {
    
    var sideLength: Double = 0.0
    
    
    init(sideLength: Double, name: String)
    {
        self.sideLength = sideLength
        super.init(name: name)
        numberofSide = 3
    }
    
    var perimeter: Double
    {
        set {
//            sideLength = newValue / 3.0
        }
        
        get {
             return 3.0 * sideLength
        }
    }
    
    override func simpleDescription() -> String {
        return "An eque is \(sideLength)"
    }
}

var tra = EquilateralTriangle(sideLength: 3.1, name: "AAA")
print(tra.perimeter)

tra.perimeter = 2.2
print(tra.perimeter)


let opTionS :SonShape? = SonShape(sonlenth: 20.0, name: "WWW")


/*
 枚举和结构体
 不懂：
 1.使用init?(rawValue:)初始化构造器在原始值和枚举值之间进行转换。
 2.success例子里面 case let .Result(sunrise, sunset) 判断。（目前的理解是这样的，你switch success也就是你被判断被比较的是枚举成员的实例，所以可能等于的情况也必须是相同的类型即枚举成员的实例）
 
 1. let var success 枚举成员的实例，类的实例，类实例，类对象 （目前我理解为都是一样的，具体的var let接受的）
 2.使用enum来创建一个枚举。就像类和其他所有命名类型一样，枚举可以包含方法。(里面的case用大写吧)使用rawVaule属性来访问枚举成员的原始值。枚举的成员值是实际值，并不是原始值的另一种表达方法。实际上，如果没有比较有意义的原始值，你就不需要提供原始值。已知变量类型的情况下你可以使用缩写(Suits.Spades == .Spades)
 3.使用struct来创建一个结构体。结构体和类有很多相同的地方，比如方法和构造器。它们之间最大的一个区别就是结构体是传值，类是传引用。(类是相同的，结构体是独立的)
 
 有这样两种传值方式：值传递和引用传递。假如，C值传递D之后，对C作改变不会影响D，因为D是另一个对象，只不过在一开始传了之后D对象的所有属性值和C相等。然后，引用传递的话，改变C会影响D，因为他们指向同一个对象。
 
    对于class类型，是引用传递。对于struct是值传递。然后，像是数组，字典，这些他们都是struct，所以都是值传递。（也就是说我作业做的那样是不对的，会产生两份一样的数组）
 
 
 
 */

// 这是你以前OC写的枚举
enum UITableViewScrollPosition: Int {
    case none
    case top
    case middle
    case bottom
}
enum Rank :Int
{
    // 枚举成员（类实例）
    
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack,Queen,King
    
    func simpleDescription() -> String {
        
        switch self {
            
        case .Ace:
            
            return "ace"
        
        case .Jack:
            
            return "Jack"
            
        case .Queen:
            
            return "Queen"
            
        case .King:
            
            return "King111"
            
        default:
            
            return   String(self.rawValue)
        }
    }
    
    func compareWithOriginal(compareOne:Int , compareTwo :Int) -> String {
        if compareOne > compareTwo
        {
            return String(compareOne)
        }
        else
        {
            return String(compareTwo)
        }
    }
}

let ace = Rank.Ace
print(ace)

let aceRawValue = ace.rawValue
ace.simpleDescription()

let four = Rank.Four

let compareStr = ace.compareWithOriginal(compareOne: ace.rawValue,compareTwo: four.rawValue)


if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    
}

enum Suits {
    
    case Spades,Heards, Diamonds,Clubs
    func simpleDescription() -> String {
        
        switch self
        {
        case Suits.Spades:
            
            return "SpadesA"
            
        case .Heards:
            
            return "HeardsA"
            
        case .Diamonds:
            
            return "DiamondsA"
        
        default:
            
            return "ClubsA"
        }
    }
    
    func color(suitName:Suits) -> String {
        
        switch self {
        case .Spades,.Clubs:
            return "black"
        default:
            return "red"
        }
    }
}
// 得到枚举成员的实例
let heaeds = Suits.Spades
let heaedsDesciption = heaeds.simpleDescription()

// 因为没有提供枚举成员的原始值，那就直接用枚举值类型，实际值类型
heaeds.color(suitName:heaeds)


enum ServerResponse
{
    case Result(String, String)
    case Failure(String)
//    case Other(String)
}


let success = ServerResponse.Result("6.00 am", "8:00 pm")
let failure = ServerResponse.Failure("Out of cheese.")

print(success,failure)


switch success
{
    case let .Result(sunrise, sunset):
    
    let serverResponse = "jia you \(sunrise) jia you \(sunset)"
    
    case let .Failure(shibai):
    
    print("Failure....:\(shibai)")
    
    // 提示永远不会被执行，因为就这2种情况
    default:
    print("Failure... ")
}

struct Card {
    
    var rank:Rank
    var suit:Suits
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    
}

let threeOfSpades = Card(rank: Rank.Three, suit: Suits.Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()



/*
 问题：
 1.不是太懂，被{get}搞懵逼了,在protocol中不写提示属性必须实现get set其中一个
 2. 写一个实现这个协议的枚举。因为枚举中不写包含属性，这个怎么办
 
 协议和扩展
 1.注意声明SimpleStructure时候mutating关键字用来标记一个会修改结构体的方法。SimpleClass的声明不需要标记任何方法，因为类中的方法通常可以修改类属性（类的性质，你在类的方法前面加mutating会提示报错，自动去掉）。
 类，枚举和结构体继承这个协议，协议里面的属性和方法都必须去重载，否则就提示报错。String也是可以+=的
 */
protocol ExampleProtocal {
    
    var simpleDescription: String{
        get
    }
    mutating func adjust()
    
}

class SimpleClass: ExampleProtocal {
    
    var simpleDescription: String = "A very simple class"
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

//enum SimpleEnumerate: ExampleProtocal
//{
//    
//    case A
//    case B
//    case C,D
//    case E(String,String)
//    var simpleDescription: String = "A simple enumerate"
//    mutating func adjust() {
//        simpleDescription += " enumerate"
//    }
//}


struct SimpleStructure: ExampleProtocal
{
    var simpleDescription: String = "A simple struct"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription



extension Int: ExampleProtocal{
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        
        self += 42
    }
}

print(7.simpleDescription)


/*
 错误处理
 问题1. let printerError as PrinterError 什么意思
    2. 使用defer代码块来表示在函数返回前，函数中最后执行的代码。
 1.采用Error协议的类型来表示错误。do try catch 进去throws函数有throw抛出就进去catch可选的内容，函数下面的代码不走了，没有throw抛出，继续走下面的代码
 2.另一种处理错误的方式使用try?将结果转换为可选的。如果函数抛出错误，该错误会被抛弃并且结果为nil。否则的话，结果会是一个包含函数返回值的可选值。（是个可选类型，并且包含一个可选值job send）
 */


enum PrinterError: Error
{
    case outofPaper
    case noToner
    case onFire
}

// 使用throws来表示一个可以抛出错误的函数
func send(job: Int, toPriter prinerName: String) throws -> String
{
    if prinerName == "Never Has Toner" {
        // 使用throw来抛出一个错误
        throw PrinterError.noToner
    }
    
    return "Job sent"
}

do {
    try send(job: 22, toPriter: "Never Has Toner1")
    print("jixuzou")
} catch  {
    print(error)
}

do
{
    // 进去throws函数有throw抛出就进去catch可选的内容，函数下面的代码不走了，没有throw抛出，继续走下面的代码
   let a = try send(job: 22, toPriter: "Never Has Toner")
    print(a)
}
catch PrinterError.outofPaper
{
    print("AAAAA")
}
catch let printerError as PrinterError
{
    print("wwwww \(printerError)")
}
catch
{
    print(error)
}


let printerSuccess = try? send(job: 222, toPriter: "22")
let printerFailure = try? send(job: 222, toPriter: "Never Has Toner")

/*
 泛型，这个就是有问题，没理解。很大问题
 */
//func repeatItem<Item>(repeating item: Item，numberofTimes: int) -> [item]
//{
//    
//    
//}


