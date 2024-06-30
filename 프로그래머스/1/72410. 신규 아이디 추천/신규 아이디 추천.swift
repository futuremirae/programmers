import Foundation

func solution(_ new_id:String) -> String {

    // 1차 
    var new_id = new_id.lowercased()
    
    // 2차 
    new_id = new_id.filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    
    //3차 
    while new_id.contains("..") {
        new_id = new_id.replacingOccurrences(of: "..", with: ".")
    }
    //4차
    while new_id.hasPrefix(".") {
        new_id.removeFirst()
    }

    while new_id.hasSuffix(".") {
        new_id.removeLast()
    }

    // 5차
    if new_id.isEmpty {
        new_id = "a"
    } else {
        //6차 
        if new_id.count >= 16 {
            let index = new_id.index(new_id.startIndex, offsetBy: 14) // 처음 0번째 인덱스에서 14칸 떨어진 -> 15번쨰 값 
            new_id = String(new_id[new_id.startIndex...index]) // 0~15번째 까지 
            if new_id.hasSuffix(".") { new_id.removeLast() }
        }
    }
//7차
    if new_id.count <= 2 {
        while new_id.count < 3 {
            new_id += new_id.suffix(1)
        }
    }
     return new_id
} 
