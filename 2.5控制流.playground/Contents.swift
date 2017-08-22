//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
 For-In 循环
 for _ in 1...power {
 answer *= base
 }
 当前理解为 下划线符号_（替代循环中的变量）能够忽略当前值，就是不提供遍历时对值的访问
 
 While 循环
 while循环，每次在循环开始时计算条件是否符合；
 repeat-while循环，每次在循环结束时计算条件是否符合。

 条件语句
 If else 和OC C一样的用法
 Switch：switch判断的什么类型，case可能的类型就是相同的类型
 default分支来匹配除了a和z外的所有值，这个分支“保证了swith语句的完备性”。
 不存在“隐式的贯穿” ：不需要在 case 分支中显式地使用break语句。每一个 case 分支都必须包含至少一条语句。
 区间匹配
 元组：目前的理解是前提条件是在元组中，（_,1）使用下划线（_）来匹配所有可能的值
 值绑定（Value Bindings）:case分支允许将匹配的值绑定一个临时常量或变量，并且在case分支中使用。
 Where case分支的模式可以使用where语句来判断额外的条件。
 复合匹配 case分支允许多种情况，只要满足一种就进去（或）。保证类型都是相同的。
 
 控制转移语句
 continue
 break
 fallthrough
 return
 throw

 提前退出
 
 检测 API 可用性
 */

let finalSquare = 25

var board: [Int] = Array(repeatElement(0, count: finalSquare + 1))
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0
repeat {
    square += board[square]
    diceRoll += 1
    if diceRoll == 7 {
        diceRoll = 1
    }
    square += diceRoll
} while square < finalSquare
// 实际上，在这个例子中，点(0, 0)可以匹配所有四个 case。但是，如果存在多个匹配，那么只会执行第一个被匹配到的 case 分支。考虑点(0, 0)会首先匹配case (0, 0)，因此剩下的能够匹配的分支都会被忽视掉。
let somePoint = (1,0)
switch somePoint {
case (0,0):
    print("One")
case (_,0):
    print("Two")
case (-2...2, -1...1):
    print("Three")
default:
    print("Other")
}

let(code,name) = ("A","B")
print("\(code)")

let anotherPoint = (2, 1)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
default:
    print("Oher")
}

func greet(person: [String: String]){
    
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)")
    
}

greet(person: ["name": "John"])


if #available(iOS 10, *) {
    
}else{
    
}

