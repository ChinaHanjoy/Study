//: Playground - noun: a place where people can play

import UIKit

//类是引用类型

class Person{
    
    var firstName: String
    var lastName: String
    var career: String?
    
    //类的变量要有初始值，可以通过构造函数来赋值
    init(firstName: String,lastName: String,career:String){
        self.firstName = firstName
        self.lastName = lastName
        self.career = career
    }
    
    init(firstName: String,lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init?(fullName: String){
        
        guard
            let spaceIndex = fullName.rangeOfString(".")?.startIndex
        else {
            return nil
        }
        
        self.firstName = fullName.substringToIndex(spaceIndex)
        self.lastName = fullName.substringFromIndex(spaceIndex.successor())
    }
    
    
    func show() -> String{
        return firstName + " " + lastName + " is a " + career!
    }
    
    func changeCareer(newcareer: String) -> String {
        self.career = newcareer
        return " New career is : " + career!
    }
}

// let person 是指 person 只能指向一个函数对象，不能再 let person = Person（。。。）
let person1 = Person(firstName: "Michal",lastName: "Jackson",career: "Dancer")
person1.show()

let person2 = Person(fullName: "Steve.Jobs")
let person3 = person1

person3.firstName = "Justin"
person3.lastName = "Beber"
person3.career = "Singer"
person3.show()
person1.show()
// 类的对象的赋值，是浅拷贝的作用，两个对象指向同一个地址,一个改变，两个都变

person2?.changeCareer("CEO")
person2?.show()
 
// ===/!== 判断两个对象是否引用同一个内存


/* 什么时候用结构体，什么时候使用类
 * 1、把结构体看作值，把类看作物体
 * 2、结构体是值类型，类是引用类型
 * 3、类是可以被继承的
 * 4、结构体比类更“轻量级”，结构体在栈中，类是在堆中
 */






