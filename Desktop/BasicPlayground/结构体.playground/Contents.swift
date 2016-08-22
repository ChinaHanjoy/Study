//: Playground - noun: a place where people can play

import UIKit


struct Location{
    
    //如果设初值，要用var ，不然用let，之后不能赋值
    let latitude: Double
    let longitude: Double
    
    //构造函数init 的第一个参数名是不可以省略的，如果想省略，加_
    
    //通过字符串 解析出其中的数值
    init(coordinateString:String){
        
        //获得“，”所在的位置
        let commaIndex = coordinateString.rangeOfString(",")!.startIndex
        //从开始到“，”的位置，获取第一个数值
        let firstElement = coordinateString.substringToIndex(commaIndex)
        //获取后一个数值
        let secondElement = coordinateString.substringFromIndex(commaIndex.successor())
        
        
        //如果是let，只能赋值一次 ； 如果是var，就可以赋值多次
        self.latitude = Double(firstElement)!
        self.longitude = Double(secondElement)!
    }
    
    //有两个参数的初始化，如果前面有了一个自定义的构造函数，则默认的构造函数无效
    init(latitude:Double, longitude:Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func printLocation(){
        print("The Location is \(self.latitude),\(self.longitude)")
    }
}

let location = Location(coordinateString: "13.222,14.222")
let lovation1 = Location(latitude: 200, longitude: 200)
location.printLocation()


