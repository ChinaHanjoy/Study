import Foundation

public class GameManager {
    
    public var score = 0
    
    //通过设为 static ，作为全局变量， public 允许外部模块使用
    public static let defaultGameManager = GameManager()
    
    // 将 init 设为 private，只能初始化一次，一个实例对象
    private init(){
    
    }
    
    public func addscore(){
        score += 10
    }
    
}