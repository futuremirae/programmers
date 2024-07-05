import Foundation
func returnRank(_ num: Int) -> Int {
    
    switch num {
        case 6: return 1
        case 5: return 2
        case 4: return 3
        case 3: return 4
        case 2: return 5
        default: return 6
    }
    
}

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    // 맞는 것 제외  
    // 맞는 개수 cnt // - 6이면 1등 , 아니면 다음 조건 
    // 0제외한  틀린거 제외 1) 완전 비면: 최저 최고 동일, 2) 0있다면 cnt+0갯수 -> 최고
    var cnt = 0
    var correctLotto: [Int] = []
    var index: [Int] = []
    var lottos = lottos
    for (i,lotto) in lottos.enumerated() {
        if win_nums.contains(lotto) {
            cnt += 1
            correctLotto.append(lotto) //맞춘것 
            
        }
    }
    if cnt == 6 { return [1,1] }
    // 맞은거 제거 제외하기 
    if !correctLotto.isEmpty {
        lottos = lottos.filter { !correctLotto.contains($0) } // 틀리게 맞춘 것들만! 다시 필터링 
        
    }
    //  0제외한  틀린거 제외 1) 완전 비면: 최저 최고 동일, 2) 0있다면 cnt+0갯수 -> 최고
    // 0제외한 모두 틀린거 
    var max = 0
    var min = 0
    
    if lottos.contains(0) {
        var zeroLottos: [Int] = []
        zeroLottos = lottos.filter { $0 == 0 }
        let zeroCnt = zeroLottos.count// 0개수 
        
        max = cnt + zeroCnt
        min = cnt
    } else {
        max = cnt
        min = cnt
    }
    
    return [returnRank(max), returnRank(min)]
}