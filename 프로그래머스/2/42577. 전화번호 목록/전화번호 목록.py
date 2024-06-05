def solution(phone_book):
   
    hashmap ={}
    
    # 접두사를 만들어야 함 - 모두다 접두사가 될수 
    for phone in phone_book:
        hashmap[phone] = 1 
    
    for phone in phone_book:
        jubdoo = ""
        for num in phone: # 전화 번호 한글자씩 이어 붙임 
            jubdoo += num
            if jubdoo in hashmap and jubdoo != phone: 
                return False
    return True
            
            
        