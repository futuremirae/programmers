import Foundation

func solution(_ strArr:[String]) -> [String] {
    let result = strArr.filter { !$0.contains("ad") }
    return result 
}