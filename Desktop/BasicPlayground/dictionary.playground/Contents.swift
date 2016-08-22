//: Playground - noun: a place where people can play

import UIKit

var dic = ["swift":"雨燕","python":"大蟒","java":"爪哇岛"]

//声明空字典
var emptydictionary :[String:Int] = [:]
var emptydictionary1 : [String:String] = [:]
var emptydictionary2 : Dictionary<String,String> = [:]
var emptydictionary3 = [String:String]()
var emptydictionary4 = Dictionary<String,Int>()

//通过键值进行索引，返回的值是可选型
print(dic["swift"])
if let value = dic["swift"]{
    print("swift 的意思是：\(value) ")
}


//几个方法
dic.count
dic.isEmpty
emptydictionary.isEmpty

Array(dic.keys)
Array(dic.values)


//遍历
for key in dic.keys{
    print(key)
}

for value in dic.values{
    print(value)
}

for (key,value) in dic{
    print("\(key):\(value)")
}

//比较，字典是无序的，键是不能重复的
let dic1 = [1:"a",2:"b",3:"c"]
let dic2 = [2:"b",1:"a",3:"c"]
dic1 == dic2

//==============操作==============

//修改，直接赋值 或者 用方法
dic["python"] = "Python"
dic.updateValue("雨燕，快速", forKey: "swift")//dic.updateValue()可以返回旧的值

print(dic)

let oldkey = dic.updateValue("雨燕，快速", forKey: "swift")
if let oldkey = oldkey,newkey = dic["swift"] where oldkey == newkey {
    print("*:修改前后的值相同，请注意是否输入错误！")
}

//添加，直接赋值 或者 用方法
dic["C++"] = "CPlusPlus"
dic.updateValue("C", forKey: "C")

//删除，直接赋值 或者 用方法
dic["C"] = nil
//dic.removeValueForKey("C++")//返回删除的key的value
if let value = dic.removeValueForKey("C++"){
    print("C++:\(value)，这条已从字典里删除!")
}

dic.removeAll()

print(dic)










