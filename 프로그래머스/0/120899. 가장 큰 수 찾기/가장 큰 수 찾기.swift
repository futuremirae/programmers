import Foundation

func solution(_ array:[Int]) -> [Int] {
    
    let new_array =  array.sorted { $0 > $1 }
    var result = [new_array[0]]
    
    for (index, num) in array.enumerated() {
        if num == new_array[0] {
            result.append(index)
        }
        
        
    }
    return result
}