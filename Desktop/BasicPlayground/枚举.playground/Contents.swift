//: Playground - noun: a place where people can play

import UIKit

//枚举 Enumeration

enum Month: Int{
    case January = 1
    case February = 2
    case March = 3
    case April = 4
    case May = 5
    case June = 6
    case July = 7
    case August = 8
    case September = 9
    case October = 10
    case November = 11
    case December = 12
}

let curMonth = Month.June
let curMonth1:Month = .June

func season( month:Month ) -> String {
    switch month {
    case .January,.February,.March:
        return "\(month) is Spring"
    case .April,.May,.June:
        return "\(month) is Summer"
    case .July,.August,.September:
        return "\(month) is Autumn"
    default:
        return "\(month) is Winter"
    }
}

season(.January)

func monthsLeftBeforeNewYear(month:Month) -> Int {
    return 12 - month.rawValue
}

//let month:Month = .April
let input = 4
if let month = Month(rawValue:input){
    monthsLeftBeforeNewYear(month)
}

//未定义rawValue时，默认从0开始
enum Grade:Int{
    case F,E,D,C,B,A
}
let grade:Grade = .A
print("Your garde is: \(grade.rawValue)")


//也可以定义不是连续的rawValue值
enum Coin: Int {
    case Penny = 1
    case Nickel = 5
    case Dime = 10
    case Quarter = 25
}

let coin:Coin = .Quarter
print("It is \(coin.rawValue) cents")


//枚举类型也可以是任何变量，String 。。。
//对于字符串类型的，可以不写，默认的和名字一样


enum Direction {
    case East
    case West
    case North
    case South
}

let direction:Direction = .North

print("My home is in the \(direction)")

// Associate Value
enum ATMStatus {
    case Success(Int)
    case Error(String)
    case Waitting
}

var balance = 100
func withdraw( amount: Int ) -> ATMStatus{
    if balance >= amount{
        balance -= amount
        return .Success(balance)
    }else{
        return .Error("Money is not enough !")
    }
}

let result = withdraw(222)
switch result {
case let .Success(newBalance):
    print("\(newBalance)is left.")
case let .Error(errorMessage):
    print("Error : \(errorMessage)")
case .Waitting:
    print("please waitting ~")
}

// Raw Value 与 Associate Value 互斥

enum Shape {
    case Square(side: Double)
    case Rectangle(with: Double, length: Double)
    case Circle(centerx: Double, centery: Double, radius: Double)
    case Point
}

let square = Shape.Square(side: 10)
let rectangle = Shape.Rectangle(with: 20, length: 30)
let circle = Shape.Circle(centerx: 0, centery: 0, radius: 3)
let point = Shape.Point

//递归枚举 recursive enum .用indrect case 定义
enum ArithmeticExpression{
    case Number(Int)
    indirect case Addition(ArithmeticExpression,ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression,ArithmeticExpression)
}

let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.Multiplication(five, four)

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .Number(value):
        return value
    case let .Addition(left,right):
        return evaluate(left) + evaluate(right)
    case let .Multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

evaluate(sum)
evaluate(product)













