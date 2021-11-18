def count_contruct(str, arr, memo = {})
    return memo[str] if memo[str]
    return 1 if str == ''
    count = 0
    arr.each do |s|
        if str.start_with?(s)
            i = s.length
            x =  count_contruct(str[i..-1], arr, memo) 
            count += x
        end
    end 
    memo[str] = count 
    return count
end 
p count_contruct('abcdef', ['ab', 'abc', 'def', 'ef'])
p count_contruct('eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeep', ['ee','eee', 'eeeeee', 'def', 'abcd'])