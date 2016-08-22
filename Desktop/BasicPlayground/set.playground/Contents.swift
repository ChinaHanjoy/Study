//: Playground - noun: a place where people can play

import UIKit

/*
 集合是无序集
 集合里的数据是唯一的
 集合显示是{}，但写的时候还是用[]
 */

var skillsofA: Set<String> = ["SWIFT","OC","OC"]

//空集合
var emptySet1 : Set<Int> = []
var emptySet2 : Set<Double> = []

var vowels = Set(["A","S","D","F","G","G"])

var skillsofB: Set = ["C++","JAVA"]

//常用方法
skillsofB.count
skillsofB.isEmpty
emptySet1.isEmpty
skillsofA.first //随机取一个数
skillsofA.contains("OC")

//遍历
for skill in skillsofA{
    print(skill)
}

//值的比较
let setA:Set = [1,2,3]
let setB:Set = [1,3,2,3,2]
setA == setB

//==============操作==============
//添加
var skillsofC: Set<String> = []

skillsofC.insert("SWIFT")
skillsofC.insert("HTML")
skillsofC.insert("C++")
skillsofC.insert("C++")

//删除
skillsofC.remove("C++") //返回删除的元素
skillsofC.remove("OC")  //删除没有的不报错，返回nil
if let skill = skillsofC.remove("OC"){
    print("\(skill)已经被删除！")
}
skillsofC.removeAll()

//特殊的方法
skillsofC = ["C++","JAVA","HTML"]

//求并集
//skillsofA.union(skillsofB) //返回一个新的集合（AC的并集），A本身不改变
//skillsofA.unionInPlace(skillsofC) //返回一个并集，同时改变A本身为并集
//skillsofA.union(["ANDROID"]) //参数也可以是个数组

//求交集
//skillsofA.intersect(skillsofB)
//skillsofB.intersectInPlace(skillsofC)

//减去交集
//skillsofC.subtract(skillsofB)
//skillsofC.subtractInPlace(skillsofB)

//亦或：两个集合的并集-交集
//skillsofB.exclusiveOr(skillsofC)
//skillsofA.exclusiveOrInPlace(skillsofC)

//子集判断
var skillsofD: Set<String> = ["SWIFT"]
skillsofD.isSubsetOf(skillsofB)
skillsofD.isStrictSubsetOf(skillsofA) //真子集

//超集判断
skillsofC.isSupersetOf(skillsofD)
skillsofA.isStrictSupersetOf(skillsofD)








