//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*
 函数（Functions）
 
 问题1：在 Swift 中，每个函数都有一个由函数的参数值类型和返回值类型组成的类型。你可以把函数类型当做任何其他普通变量类型一样处理，这样就可以更简单地把函数当做别的函数的参数，也可以从其他函数中返回函数。函数的定义可以写在其他函数定义中，这样可以在嵌套函数范围内实现功能封装。
 
 func sum(a: Int, b: Int) -> Int {
 return a + b
 }
 没有返回值的函数，一共有三种写法
 省略
 ()
 Void
 
 闭包 定义个一个闭包：闭包 = {(形参) -> 返回类型 in 代码实现}
 let sumFunc = {(num1: Int, num2: Int) -> Int in return  num1 + num2
 }
 最简单的闭包，如果没有参数/返回值，则 参数/返回值/in 统统都可以省略
 { 代码实现 }

 函数的定义与调用
 （名词：参数，返回类型，调用函数传实参，函数名：greet(),greet(person:)）
  greet(person:)和greet(person:alreadGreeted:)这两个函数是不同的，虽然它们都有着同样的名字greet，但是greet(person:alreadyGreeted:)函数需要两个参数，而greet(person:)只需要一个参数
 当你定义一个函数时，你可以定义一个或多个有名字和类型的值，作为函数的输入，称为参数，也可以定义某种类型的值作为函数执行结束时的输出，称为返回类型。
 
 全局函数。嵌套函数。
 
 
 闭包
 闭包的表达式
 内联闭包：调用函数（方法）传的函数类型的参数
 */

func greet(person: String) -> (String) {
    let greeting = "Hello," + person + "!"
    return greeting
    
}

// 函数的定义和调用
func addTwoInt(_ a: Int, _ b: Int) -> Int
{
    return a + b
}

//调用函数 addTwoInt(name:) addTwoInt(_:_:)


// 定义一个函数类型的常量或者变量，并把合适的函数赋值给他
var leftFunc: (Int,Int) -> Int = addTwoInt
// 函数的调用
leftFunc(5,52)

// 定义一个Int的常量或者变量，并把函数返回值赋值给他
// addTwoInt(2, 6)这就是函数调用，因为传入具体的参数值了
let resultNum: Int = addTwoInt(2, 6)
print(resultNum)


func resultNot(name: String)  {
    print("\(name)")
}

let cont = resultNot(name: "555")
print(cont)


func printResult(_ addFunc: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("传入a，b的值作为函数的参数，就像创建一个函数类型常量，并把相同函数类型的函数赋值给常量\(addFunc(a,b))")
}
// leftFunc 和 addTwoInt 肯定是一样的
printResult(leftFunc, 5, 66)


func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseFunc(_ back: Bool) -> (Int) -> Int {
    return back ? stepForward : stepBackward
}

var value = 3

let name1: (Int) -> Int = chooseFunc(value>0)
name1(value)


let name = greet(person: "Tony")

//http://www.jb51.net/article/95663.htm
// 形势1：闭包的声明最标准不省略
//1.闭包的声明，返回类型（）可以省略
var addCloser: (_ num1: Int,_ num2: Int) -> (Int)

//2.闭包的赋值
addCloser = {
    (_ num1: Int, _ num2: Int) -> Int in
    return num1 + num2
    
}
//3.闭包的调用
let result = addCloser(2,3)
print(result)


// 形式2 省略闭包声明中的形参名，闭包赋值中的返回值 (声明的时候可以用个类型，赋值的时候在写名字，返回值也可以不写)
let addCloser1: (Int, Int) -> (Int)

addCloser1 = {
    (num1, num2) in
    return num1 + num2
}

addCloser1(23,45)

// 形式3  在形式2的基础之上进一步精简
let addcloser3: (Int, Int) -> Int =
{
    (num1, num2) in
    return num1 + num2
}
addcloser3(22,555)

//形式4：如果闭包没有接收参数省略in
let addcloser4:() -> String = {
    return "这个闭包没有参数，但有返回值"
}

//形式5：简写的实际参数名
let addCloser5: (String,String) -> String = {
    return "闭包的返回值是\($0),\($1)"
}
// $0 和 $1 分别是闭包的第一个和第二个 String类型的 实际参数
addCloser5("Hello","Swift")



//场景二：闭包作为函数的参数

func combin(handel: (String,String) -> String,num: Int) {
    
    handel("2","3")
    print("hello,Swift\(num)")
}
combin(handel: {(str1,str2) -> (String) in
    return str1 + str2
}, num: 5)


// 闭包在函数定义里面调用
func combin1(handel: () -> Void,num: Int) {
    
    handel()
    print("hello,Swift45646\(num)")
}
// 函数的调用，将一个闭包表达式作为一个参数传递给闭包
combin1(handel: {
    print("可以了456456")
}, num: 5)

// 一，尾随闭包
func combin1(num: Int,handel:(String,String) -> String) {
    print("hello Swwift\(num)")
}

combin1(num: 5, handel: {(str1,str2) -> String in
    return str1 + str2
})

combin1(num: 20156) { (text1,text2) -> (String) in
    return text1 + text2
}

// sorted方法

let names = ["A","B","E","Z","C","A"]


func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
let names1 = names.sorted(by: backward)

let names2 = names.sorted { (s1, s2) -> Bool in
    return s1 < s2
}

// 值捕获

func makeIncrementer(forIncrementer amount: Int) -> () -> Int {
    var runningTotal = 0
    // 嵌套函数(闭包)在其被定义从上下文捕获了两个值，amount 和 runningTotal
    func increamenter() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increamenter
    
}

// 只是将这些常量或者变量的值设置为对应函数或闭包的引用
let increamentByTen = makeIncrementer(forIncrementer: 10)

increamentByTen()
increamentByTen()
increamentByTen()

/*
 如果我们单独考虑嵌套函数 incrementer()，会发现它有些不同寻常：
 
 func incrementer() -> Int {
 runningTotal += amount
 return runningTotal
 }
ncrementer() 函数并没有任何参数，但是在函数定义体内访问了 runningTotal 和 amount 变量,这是因为它从外围函数捕获了 runningTotal 和 amount 变量的引用。捕获引用保证了 runningTotal 和 amount 变量在调用完 makeIncrementer 后不会消失，并且保证了在下一次执行 incrementer 函数时，runningTotal 依旧存在.
 */

// 引用传递，常量C值传递给D值之后（D对象的所有属性值和C相等），改变C会影响D，因为他们指向同一个对象（class类型，闭包类型）
// 值传递  改变C不影响D，他们是不同的对象（结构体，数组，字典）


// 常量C传递给D
let alsoIncreamentByTen = increamentByTen
alsoIncreamentByTen()




// 闭包的调用在哪里啊，朋友
let closures: (String,String) -> String = {
    (name1,name2) in return name1 + name2
}
closures("2","6")


var comletionHandle: () -> String = {
    "约吗？"
}
// 返回“单纯的函数名“,不是调用。
func doSomeThing2(some: @escaping ()->String) {
    comletionHandle = some
}
doSomeThing2{
    return "叔叔号"
}
print(comletionHandle())




var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure { self.x = 100 }
        someFunctionWithNonescapingClosure { x = 200 }
    }
}

let instance = SomeClass()
instance.doSomething()
print(instance.x)

// 闭包的调用
completionHandlers.first?()
print(instance.x)


var arr = ["A","B","C","D","E"]
print(arr.count)

let customer = {()->String in arr.remove(at: 0)}

print("\(customer())")

// 和函数是一样的


