//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Int 其实是个结构体，.max 是 Type Property（类型属性）
Int.max

class Player{
    var name: String
    var score = 0
    static var highestScore = 0
    
    init(name: String){
        self.name = name
    }
    
    func play(){
        
        let score = random()%100
        print("\(name) player got \(score) scores ! ")
        
        self.score += score
        print("Total score of \(name) is \(self.score)")
        
        if(self.score > Player.highestScore){
            Player.highestScore = self.score
        }
        
        print("The highestScore is \(Player.highestScore)")
        print("-------------------------------------------")
        
    }
}

let player1 = Player(name: "zhouhang")
player1.play()
player1.play()

let player2 = Player(name: "nihao")
player2.play()
player2.play()

