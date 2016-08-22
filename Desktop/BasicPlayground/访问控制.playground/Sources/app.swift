import Foundation

public class App {
    
    private let ui = UI()
    public var name: String
    public init(name: String){
        self.name = name
    }
    
    public func switchMode(){
        switch ui.themeMode {
        case .DayMode:
            ui.themeMode = .NightMode
        default:
            ui.themeMode = .DayMode
        }
    }
    
    public func show(){
        print("this is show！")
    }
}