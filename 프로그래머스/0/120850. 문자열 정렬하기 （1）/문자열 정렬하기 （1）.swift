import Foundation

func solution(_ my_string:String) -> [Int] {
//     let my_string = my_string.filter { $0.isNumber } // string 
//     let result = my_string.compactMap { Int(String($0)) } // character이므로 int 적용불가 
   
    return my_string.filter { $0.isNumber }.compactMap { Int(String($0)) }.sorted(by: <)
}