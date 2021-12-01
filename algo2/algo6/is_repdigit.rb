def is_repdigit(number)

    arr = number.to_s.split("").map(&:to_i)
    digit = arr.first
    count = arr.count { |n| n != digit }
    return true if count == 0
    return false 
end