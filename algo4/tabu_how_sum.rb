def tabu_howSum(target, nums)
    arr = Array.new(target+1).map{|x| x = nil}

    arr[0] = []

    i = 0
    while i <= target
        if arr[i] != nil
            nums.each do |num|
                arr[i+num]  = arr[i] + [num]
               
            end 
        end
        i += 1
    end
    return arr[target]
end

p tabu_howSum(300, [7, 14])