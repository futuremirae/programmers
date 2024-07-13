import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    for (index,chr) in String(num).enumerated() {
        if Int(String(chr))! == k {
            return index + 1
        }
        
    }
    
    
    
    
    return -1
}