import Foundation

func solution(_ my_string:String) -> Int {
    var my_string = my_string.filter { ["0","1","2","3","4","5","6","7","8","9"].contains($0) }
    var result = 0
   for chr in my_string {
       result += Int(String(chr))!
   }
    
    
    return result
}