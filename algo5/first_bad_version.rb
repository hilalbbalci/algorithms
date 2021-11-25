def first_bad_version(n) #5
    
    left = 1
    right = n
    
    while left < right
        mid = left + (right-left)/2
        if is_bad_version(mid)
            right = mid 
        else
            left = mid + 1
        end 
    end 
    return right  
end