import Foundation

func solution(_ my_string:String) -> String {
    // var my_string = my_string.map { String($0) }
    
    return my_string.filter { !["a","e","i","o","u"].contains($0) }
    
}