def canSum(arr, target, memo = {})
    return memo[target] if memo[target] != nil
    return true if target == 0
    return false if target < 0
    arr.each do |num|
    remain = target - num
    if canSum(arr, remain, memo) == true
        memo[target] = true
        return true
    end
end
memo[target] = false
return false
end

p canSum([7,14], 300)