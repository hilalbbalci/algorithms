def three_sum(nums)
    arr = []
    i = 0
    b = Set.new
    while i < nums.length - 2    
        j = i + 1
        while j < nums.length - 1
            
            k = j + 1
            while k < nums.length
                
                if nums[i] + nums[j] + nums[k] == 0
                    a = Set.new
                    a.add(nums[i])
                     a.add(nums[j])
                     a.add(nums[k])
                   if  !b.include?(a)
                    arr << [nums[i], nums[j], nums[k]]
                       b.add(a)
                   end
                end
                k += 1
            end
            j += 1
        end
        i += 1
    end 
    return arr   
end