def duplicate_zeros(arr)
    # clone = arr.clone
    l = arr.length
    
    i = 0 
    while i < l-1
     
        if arr[i] == 0
             arr.insert((i+1), 0)   
            arr.pop
            i += 2
        else
            i += 1 
        end 
    end
end