def grid_traveler(m, n, memo={})
    key = m.to_s + ',' + n.to_s;
    return memo[key] if memo[key] != nil
    return 1 if (m === 1 && n === 1) 
    return 0 if (m === 0 || n === 0) 

    memo[key] = grid_traveler(m-1, n, memo) + grid_traveler(m, n-1, memo)

    return memo[key]
end


 p grid_traveler(2,2)