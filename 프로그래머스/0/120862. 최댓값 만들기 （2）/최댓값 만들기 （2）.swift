import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = -100000000
    for (indexI, num1) in numbers.enumerated() {
        for (indexJ, num2) in numbers.enumerated() {
            if indexI == indexJ {
                continue
            }
            
            if result < num1 * num2 {
                result = num1 * num2
            }
            
        }
    }
    
    return result
}