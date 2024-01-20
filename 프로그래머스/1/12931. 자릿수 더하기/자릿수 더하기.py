def solution(n):
    sum = 0
    
    while(1):
        sum += (n % 10)
       
        n = n//10
       
        if (n == 0):
            break
   
    return sum 