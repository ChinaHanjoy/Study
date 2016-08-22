//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 属性观察器 Property Observer

class LightBulb {
    
    static let maxCurrent = 30
    var current = 0 {
        
        //属性观察器用于保护数据是合法的
        
        willSet {
            print("Current value changed. The change is \(abs(current-newValue))")
        }
        
        didSet {
            
            if current == LightBulb.maxCurrent {
                print("Pay attention ,the current value get to the maxvalue! ")
            }
            else if current > LightBulb.maxCurrent{
                print("Error: current too high ! ")
                current = oldValue
            }
            print("The current is \(current)")
            print("====================================")
        }
    }
    
}

let bulb = LightBulb()
bulb.current = 20
bulb.current = 35

//========================================================================

enum Theme {
    case DayMode
    case NightMode
    
}


class UI {
    
    var fontColor: UIColor!
    var backColor: UIColor!
    var themeMode: Theme = .DayMode {
        
        // didSet willSet 不会在初始化，赋默认值的时候 调用
        didSet{
            changeMode(themeMode)
        }
    }
    
    init (themeMode: Theme){
        self.themeMode = themeMode
        changeMode(themeMode)

    }
    
    func changeMode(themeMode: Theme) {
        switch themeMode {
        case .DayMode:
            self.fontColor = UIColor.blackColor()
            self.backColor = UIColor.whiteColor()
        default:
            self.fontColor = UIColor.whiteColor()
            self.backColor = UIColor.blackColor()
        }
    }
}

let ui_1 =  UI(themeMode: .NightMode)
ui_1.backColor
ui_1.fontColor
ui_1.themeMode = .DayMode
ui_1.backColor
ui_1.fontColor











