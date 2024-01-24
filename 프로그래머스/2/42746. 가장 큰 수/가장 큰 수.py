def solution(numbers):
    answer = ''
    
    numbers = list(map(str,numbers))
    
    numbers.sort(key = lambda num : num*3, reverse =True)
    
    answer =str(int(''.join(numbers)))
    return answer
