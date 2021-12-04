def product_except_self(nums)
    left = []
    right = []
    solution = []

    i = 0
    while i < nums.length 
        if left.length == 0
            left << 1
        else
            left << (left[i-1]*nums[i-1])
        end
        i += 1
    end

    i = nums.length - 1
    while i >= 0
        if right.length == 0
            right << 1
        else
            right.unshift(right[0]]*nums[i+1])
        end
        i -= 1
    end
    i = 0
    while i < left.length

        solution << (left[i]*right[i])
        i += 1
    end


return solution
end
