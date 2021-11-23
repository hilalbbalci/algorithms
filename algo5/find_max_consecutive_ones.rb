def find_max_consecutive_ones(nums)
    
    longest = []
    
    max = []
    
    
    nums.each do |ele|
       if ele == 1
           longest << 1
       else
           max = longest if max.length < longest.length
           longest = []
       end   
    end
    max = longest if max.length < longest.length
    return max.length
end