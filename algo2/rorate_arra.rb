def rotate(nums, k)
    k.times do 
       x = nums.pop
        nums.unshift(x)
    end
    
end