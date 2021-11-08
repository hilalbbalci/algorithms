def how_sum(target, arr, memo = {})

    return memo[target] if memo[target] != nil
    return [] if target == 0
    return nil if target < 0


    arr.each do |num|
        remain = target - num
        result = how_sum(remain, arr, memo)
        if result != nil 
           return memo[target] = result.push(num)
        end
    end
memo[target] = nil
return memo[target]
end
p how_sum(8, [7,6])