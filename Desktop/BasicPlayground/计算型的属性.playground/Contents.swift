//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

class Rectangle {
    var origin = Point()
    var size = Size()
    //声明一个计算性[属性],也可以设置为方法
    /*
     1、声明成var类型
     2、声明的变量名必须要有属性
     */
    var center: Point{
        
        // getter
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX,y: centerY)
        }
        
        // setter
        set{
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }

    }
    
    var area:Double{
        get{
            return size.height * size.width
        }
    }
    
    
    init(origin: Point,size: Size){
        self.origin = origin
        self.size = size
    }
}

var rectangle = Rectangle(origin: Point(x: 1,y: 1), size: Size(width: 4, height: 3))
rectangle.center

rectangle.center = Point(x: 0, y: 0)
rectangle.area

var rect = CGRect(origin: CGPoint(x: 0, y: 0),size: CGSize(width: 10, height: 5))
rect.origin
rect.size








