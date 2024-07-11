import Foundation

func solution(_ n:Int, _ t:Int) -> Int {
    var num = n
    for i in 0...t {
        if i != 0 {
        let swap = num 
        num = swap * 2
        }
    }
    return num
}