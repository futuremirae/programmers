import Foundation
    extension String {
    subscript(_ index: Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}
func solution(_ new_id:String) -> String {

 
    var new_id = new_id.lowercased()
    
    // id = new_id.components(separatedBy:"")
    
    new_id = new_id.filter { $0.isLetter || $0.isNumber || $0 == "-" || $0 == "_" || $0 == "." }
    
    while new_id.contains("..") {
        new_id = new_id.replacingOccurrences(of: "..", with: ".")
    }
    var new_str: String = ""
    let last_index = new_id.count - 1
    for (index,s) in new_id.enumerated()  {
       
        if (index == 0 || index == last_index) {
            if (s == ".") {
                
                new_str += ""
            }else{
                 new_str += String(s)

            }
           
        } else{
            new_str += String(s)

        }
        
    }

    if new_str.isEmpty {
        new_str = "a"
    } else {
        if new_str.count >= 16 {
            new_str = String(new_str.prefix(15))
            if new_str.suffix(1) == "." {new_str = String(new_str.prefix(14))}
        }
    }

    if new_str.count <= 2 {
       
        while new_str.count < 3 {
            new_str += new_str.suffix(1)
        }
    }
     return new_str
} 

//print(solution("=.="))