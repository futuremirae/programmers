def solution(n):
    li = []
    sum = 0
    for i in range(1,n+1):
        if n % i == 0:
            li.append(i)

    
    for i in range(len(li)):
        sum += li[i]
    
        
        

    return sum