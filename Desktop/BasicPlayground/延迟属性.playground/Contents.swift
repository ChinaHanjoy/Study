//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Lazy Property 延迟属性

class CloseRange {
    
    let start: Int
    let end: Int
    
    // 要使用的时候调用一次，以后再次使用就不用再调用
    lazy var sum: Int = {
        var res = 0
        for i in self.start...self.end{
            res += i
        }
        return res
    }()
    
    // 计算型属性
    var width: Int {
        return end - start + 1
    }
    
    init?(start: Int , end: Int){
        if start > end {
            return nil
        }
        self.start = start
        self.end = end
    }
}

if let range = CloseRange(start: 0, end: 100){
    range.width
    range.sum
}
