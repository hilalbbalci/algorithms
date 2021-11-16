def height_balanced(arr) #[-10,-3,0,5,9]
    
    new_arr = []
    
    mid = arr.length / 2
    
    new_arr << arr[mid]

    left = arr[0...mid]
    right = arr[mid+1..-1]
    new_arr << left.pop
    new_arr << right.pop

    while !left.empty? || !right.empty?
        p new_arr
        new_arr << left.pop
        new_arr << nil
        p new_arr       
        new_arr << right.pop
        p new_arr
    end 
    
    return left + new_arr + right
    
end 

p height_balanced([1,3])