def solution(n):
    li = '*' * n
    li = list(li)
    for i in range(n):
        if i % 2 == 0:
            li[i] = "수"
        else:
            li[i] = "박"
    return ''.join(li)
    
        