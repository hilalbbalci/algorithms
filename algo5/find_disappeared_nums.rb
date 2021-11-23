def find_disappeared_numbers(nums) 
    n = nums.length 
    arr = []
    set = Set.new
    hash = Hash.new(0)
    nums.each{ |n| hash[n] += 1}
    sorted = hash.keys.sort
    i = 0
    while i < n
        if !sorted[i]
           if set.include?(i+1)
               set.delete(i+1)
               
           else
              arr << i+1
           end 
               
            
            
        elsif sorted[i] != i+1 
            arr << i+1 if !set.include?(i+1)
            set.add(sorted[i])  
             
        end 
        i += 1
    end      
  return arr
end