def third_max(nums)
    clone = nums.clone
    max = nil
    if clone != []
            max = clone.max
            clone.delete(max)
            if clone != []
                max = clone.max
                clone.delete(max)
                 if clone != []
                    max = clone.max
                     return max
                 end
            end 
    end

 
    return nums.max
end