def best_sum(target, arr, memo = {})
    return memo[target] if memo[target] != nil 
    return [] if target == 0
    return nil if target < 0
    shortest = nil
    arr.each do |num|
        remainder = target - num
        sub_result = best_sum(remainder, arr, memo)
        if sub_result
            sub_result << num
            if shortest == nil || sub_result.length < shortest.length
                shortest = sub_result
            end
        end   
    end
    memo[target] = shortest
    return shortest
end

# p best_sum(7,[5,3,4,7])
# p best_sum(8,[2,5,3])
p best_sum(100,[25,5,2,1])