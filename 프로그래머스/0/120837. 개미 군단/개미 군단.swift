import Foundation

func solution(_ hp:Int) -> Int {
    
    var hp = hp
    var result = 0
    while hp != 0 {
        if hp >= 5 {
            result += hp / 5
            hp = hp % 5
        }
        
        if hp >= 3 {
            result += hp / 3
            hp = hp % 3
        }
        
        result += hp 
        break            
       
    }
    return result
}