//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct Juzhen{
    
    var m: [[Int]]
    var row: Int
    var col: Int
    
    init?( _ arr2d: [[Int]]){
        guard arr2d.count > 0 else{
            return nil
        }
        
        let row = arr2d.count
        let col = arr2d[0].count
        
        for i in 1..<row {
            if arr2d[i].count != row{
                return nil
            }
        }
        
        self.m = arr2d
        self.col = col
        self.row = row
    }
    
    static func DanweiJuzhen(n: Int) -> Juzhen? {
        
        if n <= 0 {
            return nil
        }
        
        var m: [[Int]] = []
   
        for i in 0..<n {
            var row = [Int](count: n, repeatedValue:0)
            row[i] = 1
            m.append(row)
        }
        
        return Juzhen(m)
    }
    
    func printJuzhen(){
        for i in 0..<row {
            for j in 0..<col{
                print(m[i][j],terminator:" ")
            }
            print()
        }
    }
    
}


if let m = Juzhen([[1,2],[3,4]]){
    m.printJuzhen()
}

Juzhen.DanweiJuzhen(6)?.printJuzhen()





