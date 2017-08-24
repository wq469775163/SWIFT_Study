//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 问题：与 Objective-C 语言不同的是，Swift 允许直接设置结构体属性的子属性。上面的最后一个例子，就是直接设置了someVideoMode中resolution属性的width这个子属性，以上操作并不需要重新为整个resolution属性设置新值。（直接设置结构体属性的子属性）
 
 Swift 并不要求你为自定义类和结构去创建独立的接口和实现文件。你所要做的是在一个单一文件中定义一个类或者结构体，系统将会自动生成面向其它代码的外部接口。
 通常一个类的实例被称为对象
 
 类和结构体对比
 struct Resolution {
 var width = 0
 var height = 0
 }
 class VideoMode {
 var resolution = Resolution()
 var interlaced = false
 var frameRate = 0.0
 var name: String?
 }
 1.UpperCamelCase这种方式来命名 owerCamelCase这种方式为属性和方法命名
 2.属性写上初始化默认值，或者可选类型也行的，就像set方法重写（变量存储属性）
 let someResolution = Resolution()
 let someVideoMode = VideoMode()
 生成结构体和类实例的语法非常相似：构造器语法的最简单形式是在结构体或者类的类型名称后跟随一对空括号，如Resolution()或VideoMode()。通过这种方式所创建的类或者结构体实例，其属性均会被初始化为默认值。（类名+（））
 通过使用点语法，你可以访问实例的属性。其语法规则是，实例名后面紧跟属性名，两者通过点号(.)连接
 结构体类型的成员逐一构造器： let vga = Resolution(width:640, height: 480)（只是结构体）
 
 
 结构体和枚举是值类型
 值类型被赋予给一个变量、常量或者被传递给一个函数参数的时候，其值会被拷贝。（不同的实例，里面的数据碰巧一样）
 整数（Integer）、浮点数（floating-point）、布尔值（Boolean）、字符串（string)、数组（array）和字典（dictionary），都是值类型
 
 类是引用类型 引用类型在被赋予到一个变量、常量或者被传递到一个函数时，其值不会被拷贝
 需要注意的是tenEighty和alsoTenEighty被声明为常量而不是变量。然而你依然可以改变tenEighty.frameRate和alsoTenEighty.frameRate，因为tenEighty和alsoTenEighty这两个常量的值并未改变。它们并不“存储”这个VideoMode实例，而仅仅是对VideoMode实例的引用。所以，<改变的是被引用的VideoMode的frameRate属性>，而不是引用VideoMode的常量的值
 
 恒等运算符
 等价于（===）
 不等价于（!==）
检测两个常量或者变量是否引用同一个类实例
 let tenEighty = VideoMode()
 let alsoTenEighty = tenEighty
 if tenEighty === alsoTenEighty {
 print("tenEighty and alsoTenEighty refer to the same Resolution instance.")
 }
 //打印 "tenEighty and alsoTenEighty refer to the same Resolution instance."
 
 这意味着绝大部分的自定义数据构造都应该是类，而非结构体
 
 Swift 中，许多基本类型，诸如String，Array和Dictionary类型均以结构体的形式实现。这意味着被赋值给新的常量或变量，或者被传入函数或方法中时，它们的值会被拷贝。
 Objective-C 中NSString，NSArray和NSDictionary类型均以类的形式实现，而并非结构体。它们在被赋值或者被传入函数或方法时，不会发生值拷贝，而是传递现有实例的引用。
 以上是对字符串、数组、字典的“拷贝”行为的描述。在你的代码中，拷贝行为看起来似乎总会发生。然而，Swift 在幕后只在绝对必要时才执行实际的拷贝。Swift 管理所有的值拷贝以确保性能最优化，所以你没必要去回避赋值来保证性能最优化。
 */

struct Resolute {
    var width = 0
    var height = 0
}

let hd = Resolute(width :100, height: 200)

var cime = hd
cime.width = 8888

print(hd.width)
print(cime.width)

