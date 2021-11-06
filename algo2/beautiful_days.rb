def beautifulDays(i, j, k)
    # Write your code here
    count = 0
    (i..j).each do |l|
       if (l.to_s.reverse.to_i - l) % k == 0
        count += 1
       end
    end
    count
end