def remove_duplicates(nums) #[0,0,1,1,1,2,2,3,3,4]
    i = 0
    while i < nums.length - 1
        x = nums[i]
       if nums[i+1..-1].include?(x)   
        nums.delete(x)
        nums << x 
        i = 0
       else
        i+=1
       end
    end
    nums.sort!
    print nums
end