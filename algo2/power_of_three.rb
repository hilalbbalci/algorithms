def is_power_of_three(n)
    return false if n < 1 
    return true if n == 1
    remain = n % 3
    p remain
    return false if remain != 0
    divider = n / 3
    p divider
    while divider > 1
        remain = divider % 3
        divider = divider / 3
        p divider
        p remain
        if remain != 0
            return false
        end
    end
    return true
end