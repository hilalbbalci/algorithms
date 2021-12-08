def countApplesAndOranges(s, t, a, b, apples, oranges)
    # Write your code here
    m = 0
    n = 0
    apples.each do |d|
        if s <= (a+d) &&  (a+d) <= t
            m += 1
        end
    end
    
    oranges.each do |d|
           if s <= (b+d) &&  (b+d) <= t
             n += 1
           end
    end
    puts m 
    puts n

end