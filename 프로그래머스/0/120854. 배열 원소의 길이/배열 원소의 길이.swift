import Foundation

func solution(_ strlist:[String]) -> [Int] {
    return strlist.map { Array($0).endIndex }
}