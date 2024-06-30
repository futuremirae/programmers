// Single(S), Double(D), Triple(T) 영역 1~3제곱 
// 스타상(*) -> 직전 점수와 해당점수를 2배로 변경, 아차상(#) -> 해당 점수는 -로 변경 
// *이 첫번째에 나올 경우 -> 처음거만 2배
// *는 다른 *와 중첩 가능 -> 4번 참고 
// *와 #는 중첩 가능  ->  중첩된 아차상(#)의 점수는 -2배가 된다. (예제 5번 참고)
// Single(S), Double(D), Triple(T)은 점수마다 하나씩 존재
// 스타상(*), 아차상(#)은 점수마다 둘 중 하나만 존재할 수 있으며, 존재하지 않을 수도 있다
//0 ~10의 정수와 문자 S, D, T, *, #로 구성된 문자열이 입력 -> 총 점수 반환 
//"점수|보너스|[옵션]"으로 이루어진 문자열 3세트.₩

// 각 점수값을 저장해 놓을 배열이 필요 
// 들어온 문자열 숫자+SDT가 아니라면 *#
import Foundation
func squareCalc(_ num: Int, _ str: String) -> Int {
    
    if str.contains("S") { return num }
    else if str.contains("D") { return num*num }
    else   { return num*num*num }
} 

func solution(_ dartResult:String) -> Int {
    
    let numList = dartResult.split(whereSeparator: { $0.isLetter || $0 == "#" || $0 == "*"})
    let letterList = dartResult.split(whereSeparator: { $0.isNumber})
    
    var totalScore = 0
  
    for (i,(num, letter)) in zip(numList,letterList).enumerated() {
        var score = 0
        if let num = Int(num) {
            score = squareCalc(num, String(letter))
            if letter.contains("*") {
                score *= 2
            } else if letter.contains("#") {
                score *= -1
            }
            if i != 2 {
                if letterList[i+1].contains("*") {
                score *= 2
                }
            }
            totalScore += score

        }
        
    }
        return totalScore
    
  
    }


        
    
    
    
    
