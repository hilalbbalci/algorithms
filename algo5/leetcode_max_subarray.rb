def max_subarray(nums)
    max = 0
    total = 0


    i = 0
    while i < nums.length
       
        if max < 0
            max = 0
        end 
        max += nums[i]
        total = max if max > total
        i += 1
    end
    return total
end


nums = [-2,1,-3,4,-1,2,1,-5,4]
nums2 = [5,4,-1,7,8]

p max_subarray(nums)
p max_subarray(nums2)