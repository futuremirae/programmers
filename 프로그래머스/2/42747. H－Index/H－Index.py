def solution(citations):
    citations.sort()
    citations.reverse() # 역정렬 
    count = 0
    for n in range(len(citations)):
        count = 0
        for i in range(len(citations)):
            if citations[i] > n:
                count+=1
        if count == n:
            return count 
    return count 


   
    
    
 