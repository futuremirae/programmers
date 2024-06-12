def time_convert(t):
    year, month, day = map(int,t.split("."))
    return year*12*28 + month*28 + day

def solution(today, terms, privacies):
    answer = []
    term_dict = dict()
    today = time_convert(today) # 일수로 계산 
    
    for term in terms:
        n, m = term.split()
        term_dict[n] = int(m) # 해쉬로 저장 
    
    for i in range(len(privacies)):
        date, term = privacies[i].split()
        date = time_convert(date)
        term = term_dict[term]*28
        date +=  term
        
        if today >= date: answer.append(i+1)
    
    
    return answer