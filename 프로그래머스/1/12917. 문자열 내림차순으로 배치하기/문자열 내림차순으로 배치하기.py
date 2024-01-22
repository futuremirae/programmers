def solution(s):
    s = list(s)
    s.sort()
    s = s[::-1]
    return ''.join(s)