import Foundation 
func solution(_ survey:[String], _ choices:[Int]) -> String {
   
    var scoreList: [String:Int] = ["R": 0,"T": 0,"C":0,"F":0, 
                                    "J":0,"M":0,"A":0,"N":0]
   
    var personality: String = ""

    for (naming, choice) in zip(survey, choices) {
       
        // if 1...3 ~= choice {
        //     personality = String(naming.prefix(1))
        //     scoreList[personality] = 4 - choice
        // } else if 5...7 ~= choice {
        //     personality = String(naming.suffix(1))
        //     scoreList[personality] = choice - 4
        // }
        switch choice {
            case 1...3:
                personality = String(naming.prefix(1))
                scoreList[personality]! += (4 - choice)
            case 5...7: 
                personality = String(naming.suffix(1))
                scoreList[personality]! += (choice - 4)
            default: break
            
        }
    }
    

    var result: String = ""

    scoreList["R"]! >= scoreList["T"]! ?  result.append("R") : result.append("T")
    scoreList["C"]! >= scoreList["F"]! ? result.append("C") : result.append("F")
    scoreList["J"]! >= scoreList["M"]! ? result.append("J") : result.append("M")
    scoreList["A"]! >= scoreList["N"]! ?  result.append("A") : result.append("N")
        
    return result
}

