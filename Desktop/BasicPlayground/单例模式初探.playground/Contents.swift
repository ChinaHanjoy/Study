//: Playground - noun: a place where people can play


// 自己声明的两个对象只能调用一个正真的实例对象 GameManager.defaultGameManager


let gameManager = GameManager.defaultGameManager
gameManager.addscore()
gameManager.score

let gm = GameManager.defaultGameManager
gm.addscore()
gm.score