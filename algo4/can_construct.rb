def can_contruct(str, arr, memo = {})
    return memo[str] if memo[str]
    return true if str == ''

    arr.each do |s|
        if str.start_with?(s)
            i = s.length
            if can_contruct(str[i..-1], arr, memo) == true
                memo[str] = true
                return true 
            end 
        end 

    end 
    memo[str] = false
    return false 
end
p can_contruct('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeep', ['ee','eee', 'eeeeee', 'def', 'abcd'])