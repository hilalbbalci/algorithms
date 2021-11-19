def all_construct(str, arr, memo = {})
    return memo[str] if memo[str]
   return [[]] if str == ''
  
    new_arr = []

   arr.each do |s|
        if str.start_with?(s)
            i = s.length
            result = all_construct(str[i..-1], arr, memo)
            ways = result.map{|x| x.unshift(s)}
            new_arr += ways
            
        end
    
   end

   memo[str] = new_arr
   return new_arr
end 

p all_construct('abcdef', ['ab', 'abc', 'def', 'ef', 'cd'])

