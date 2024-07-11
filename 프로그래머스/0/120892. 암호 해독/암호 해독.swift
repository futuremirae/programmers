import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    
    let cipher = Array(cipher)
    var i = 1
    var result = [String]()
    while code*i - 1 <= cipher.count - 1 {
        result.append(String(cipher[code*i - 1]))
        i += 1
    
    }
    
    
    return result.joined(separator: "")
}