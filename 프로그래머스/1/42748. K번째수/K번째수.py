def solution(array, commands):
    answer = []
    # 0,1,2  인덱싱후 몇번째 인지 
    for i in range(len(commands)):
        row = commands[i][0] - 1
        col = commands[i][1] 
        index = commands[i][2]-1
        li = array[row:col]
        li.sort()
        
        answer.append(li[index])
        
        
    return answer