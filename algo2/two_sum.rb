def two_sum(nums, target)
    hash = {}
    arr = []
    
    nums.each_with_index do |n, i|
      
        if !hash[(target-n)] 
            hash[(target-n)] = i  
            
        elsif (n * 2) == target && hash[(target-n)] 
     
            return [i, hash[(target-n)]]
        end
    end
    hash.each do  |k, v| 
        if (k * 2 ) != target && nums.include?(k)  
        arr << hash[k]
        end
    end
   
    return arr   
end