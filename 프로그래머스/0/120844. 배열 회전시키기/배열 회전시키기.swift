import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var numbers = numbers 
    direction == "right" ? numbers.insert(numbers.removeLast(), at: 0) : numbers.append(numbers.removeFirst())
    return numbers
}