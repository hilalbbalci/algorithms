  def longest_common_prefix(strs)
        min = strs[0]
        p min
        strs[1..-1].each {|x| x.length < min.length ? min = x : min = min}
        p min 
        current = ''
        longest = ''
        strs.delete(min)
        p strs
           min.each_char do |c|
               current += c
               if strs.all? {|str| str.start_with?(current)}
                   if longest.length < current.length
                       p 'yes'
                       longest = current
                       p longest
                   end
               end   
           end
        return longest
    end