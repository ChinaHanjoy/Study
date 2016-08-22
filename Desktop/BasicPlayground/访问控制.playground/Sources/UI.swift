import Foundation
import UIKit

enum Theme {
    case DayMode
    case NightMode
    
}

class UI {
    
    private var fontColor: UIColor!
    private var backColor: UIColor!
    var themeMode: Theme = .DayMode {
        
        // didSet willSet 不会在初始化，赋默认值的时候 调用
        didSet{
            changeMode(themeMode)
        }
    }
    
    init(){
        self.themeMode = .DayMode
        self.changeMode(self.themeMode)
    }
    
    init (themeMode: Theme){
        self.themeMode = themeMode
        changeMode(themeMode)
        
    }
    
    private func changeMode(themeMode: Theme) {
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


