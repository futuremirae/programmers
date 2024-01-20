def solution(x):
    answer = True
    
    
    n = x
    sum = 0
    while (n > 0):
        sum += n % 10
        n //= 10
    if (x % sum == 0):
        return answer
    else:
        answer = False
        return answer
