def solution(board):
    li = []
    answer = []
    sum = 0
    all = 0
    for i in range(len(board)):
        sum+= board[i].count(1)
        all += len(board[i])
        for j in range(len(board[i])):
            if board[i][j] == 1:
                li.append([i,j])
    if sum == all:
        return 0
    li = list(set(map(tuple, li)))
                
    for i in range(len(li)):
        row = li[i][0] # 행
        col = li[i][1] # 열
        answer.append([row,col])
        answer.append([row-1,col])
        answer.append([row+1,col])
        answer.append([row,col-1])
        answer.append([row,col+1])
        answer.append([row-1,col-1])
        answer.append([row-1,col+1])
        answer.append([row+1,col-1])
        answer.append([row+1,col+1])
        
    answer2 = []
    for i in range(len(answer)):
        if -1 and len(board[0]) in answer[i]: 
            continue
        else:
            if -1 in answer[i]:
                continue
            elif len(board[0]) in answer[i]:
                continue
            else:
                answer2.append(answer[i])
            
            
    answer2 = list(set(map(tuple, answer2)))
    
    # if all-len(answer2) < 0 :
    #     return 0
    
    
    return all-len(answer2)



                