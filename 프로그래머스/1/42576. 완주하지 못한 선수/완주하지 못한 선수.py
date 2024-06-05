def solution(participant, completion):
    hashmap = {}
    sumhash = 0
    # 키와 밸류 저장 완료 
    for part in participant:
        hashmap[hash(part)] = part # 키와 밸류 값으로 저장 
        sumhash += hash(part)
    for com in completion: 
        sumhash -= hash(com)
    return hashmap[sumhash]
    
        

    
   