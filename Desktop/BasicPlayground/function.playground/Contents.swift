//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHelloTo( name: String? ) -> String{
    return "Hello " + ( name ?? "GUest")
}

sayHelloTo(nil)

sayHelloTo("hanjoy")

func printHello() -> Void{
    print("hello")
}

printHello()


var arr = [1,2,3]
arr.append(4)
arr.contains(1)

arr.indexOf(3)
arr.removeAtIndex(2)
arr


//闭包

arr.sort({(a:Int,b:Int) -> Bool in
    return a>b
})


arr.sort({(a:Int,b:Int) -> Bool in return a>b})

arr.sort({a , b in return a > b})

arr.sort({a,b in a>b})

arr.sort({ $0 > $1 })

arr.sort(>)

//Trailing Closure
arr.sort(){ a,b in
    return a>b
}

arr.sort{ a,b in
    return a>b
}









