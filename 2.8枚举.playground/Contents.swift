//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*
 问题1：递归枚举的走法不懂
 枚举语法
 enum Compasspoint {
    // 枚举定义放在这里
 }
 a:枚举名字大写
 b:枚举的成员值（枚举的成员）:枚举定义的值(north、south之类的都是)
 c:和C OC不同，枚举原始值不会被赋值为默认的整数类型
 d:var direction: Compasspoint = Compasspoint.west(var direction = Compasspoint.west)
 
 使用 Switch 语句匹配枚举值
 主要是关于switch语法的 a:switch 判断的什么类型，case中选择的就是相同的类型。
 b: switch的case分支中必须把所有的类型都要判断全（default:其他类型就好）。
 C: case .west:
 
 关联值
 a:枚举的成员值upc具有(Int,Int,Int,Int)类型的关联值
 b:创建了一个名为productB的变量，并将Barcode.upc赋值给它，关联的元组值为(8, 85909, 51226, 3)。
 c:productB 同一时间只能存储两个值中的一个
 d: case .qrCode(let code):  switch的case分支中可以提取每个关联值作为一个常量或变量。简介（case let .upc(A,B,C,D):）
 
 原始值
 原始值和关联值是不同的。原始值是在定义枚举时被预先填充的值，像上述三个 ASCII 码。对于一个特定的枚举成员，它的原始值始终不变。关联值是创建一个基于枚举成员的常量或变量时才设置的值，枚举成员的关联值可以变化。
 当使用整数作为原始值时，隐式赋值的值依次递增1。如果第一个枚举成员没有设置原始值，其原始值将为0
 当使用字符串作为枚举类型的原始值时，每个枚举成员的隐式原始值为该枚举成员的名称。
 使用原始值初始化枚举实例： let possiblePlanet = Planet(rawValue: 7)这个方法接收一个叫做rawValue的参数（参数名），参数类型即为原始值类型，返回值则是枚举成员或nil（可选类型，有7就有值，没有7就是nil）
 
 
 递归枚举:说实话没看懂，我需要敲一下例子
 */
enum Compasspoint {
    case north
    case south
    case east
    case west
}

var direction = Compasspoint.west
	direction = .north

enum Barcode {
    case upc(Int,Int,Int,Int)
    case qrCode(String)
}

var productB = Barcode.upc(12, 23, 56, 89)
//productB = .qrCode("AHJKHJHUUIHII")

switch productB {
//case Barcode.upc(let number, let B, let C, let D):
//    print("\(number)==\(B)")
case .qrCode(let code):
    print("\(code)")
case let .upc(A,B,C,D):
    print("==\(B)")
}

 indirect enum ArithExpression {
    case number(Int)
    case addition(ArithExpression,ArithExpression)
    case multicaotion(ArithExpression,ArithExpression)
}

let five = ArithExpression.number(5)
let four = ArithExpression.number(4)
let sum = ArithExpression.addition(five, four)
let product = ArithExpression.multicaotion(sum, ArithExpression.number(2))

// ArithExpression这个跟String、Int 一样啊，你传的时候传实例“3”、3 之类的
func evaluate(_ expression: ArithExpression) -> Int {
    
    switch expression {
    case let.number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multicaotion(left, right):
        return evaluate(left) * evaluate(right)
    }
}
let result = evaluate(product)

print(result)





