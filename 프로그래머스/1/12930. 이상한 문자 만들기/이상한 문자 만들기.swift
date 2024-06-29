func solution(_ s:String) -> String {
    
    var result: [String]  = []
    let str = s
    var i: Int = 0
    var one: String = ""
    for s in str {
        if ( i % 2 != 0) {
            result.append(String(s).lowercased())
            
        }else{
            result.append(String(s).uppercased())
            
        }
         i += 1
        
        if s == " "{
            i = 0
            
        }
       
       
    }
    let answer: String = result.joined(separator: "")
    
    return answer
}