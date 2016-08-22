//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numbers:[Int] = [1,2,3,4,5]
var numbers2:Array <Int> = [1,2,3,4,5]

var vowels:[String] = ["A","B","C","D","E"]
var vowels2:Array<String> = ["A","B","C","D","E"]

var emptyArray = [Int]()

//返回个数
vowels.count

//是否空
numbers.isEmpty
emptyArray.isEmpty

//指定位置的值
vowels[2]
vowels.first
vowels.last
emptyArray.first
numbers.minElement()
vowels.maxElement()
numbers[2..<4]

//判断是否包含
numbers.contains(2)
vowels.indexOf("f")

//遍历
for number in numbers{
    print(number)
}

for (i,vowel) in vowels.enumerate(){
    print("\(i+1):\(vowel)")
}

var onetofive = [1,2,3,4,5]

//判断相等
//数组是有序的数据集合
numbers == onetofive

//==============操作==============

//添加
var courses = ["第一季","第二季","第三季"]
courses.append("第四季")
courses += ["第五季"]
courses = courses + ["第六季"]
print(courses)

//插入指定位置
courses.insert("第4季", atIndex: 3)

//删除
courses.removeFirst()
courses.removeLast()
courses.removeAtIndex(2)
courses.removeRange(0..<2)
print(courses)

//改指定位置的值
courses[0] = "hello"
print(courses)

courses[0...1] = ["1","2"]
print(courses)










