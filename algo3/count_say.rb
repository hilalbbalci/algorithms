def count_and_say(n, new = '')
    return '1' if n == 1
    
    new = count_and_say(n-1, new)
    p new
    x = ''
    new_new= ''
    new.each_char.with_index do |c, i|
        if x == '' || c == x[-1] 
            p 'if'
            x += c
           p x + 'x'
        else 
            p 'else'
            p x + 'x'
            p new + 'new'
            new_new += x.length.to_s + x[-1]
            p new_new + 'new'
            x = c
            p x + 'x'
        end
        if i == new.length-1
            p new_new + 'new'
            p 'last'
            p x.length.to_s + 'x.length'
            p x[-1] + 'x[-1]'
            new_new += x.length.to_s + x[-1]
            p new_new
        end
    end
    return new = new_new
    
end

count_and_say(6)