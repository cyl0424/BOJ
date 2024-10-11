def solution(distance, rocks, n):
    answer = 0
    
    left = 1
    right = distance
    
    rocks.sort()
    rocks.append(distance)
    
    while left <= right:
        mid = (left + right) // 2
        
        delete = 0
        prev_rock = 0
        
        for rock in rocks:
            dist = rock - prev_rock
            
            if dist < mid:
                delete += 1
            else:
                prev_rock = rock
                
            if delete > n:
                break
        
        if delete > n:
            right = mid - 1
        else:
            answer = mid
            left = mid + 1
                
    return answer