#Two children, Lily and Ron, want to share a chocolate bar. Each of the squares has an integer on it.

#Lily decides to share a contiguous segment of the bar selected such that:

#the length of the segment matches Ron's birth month, and,
#The sum of the integers on the squares is equal to his birth day.
#Determine how many ways she can divide the chocolate.
def birthday(s, d, m)
    # Write your code here
    count = 0
    i = 0
    while i + m <= s.length
        if s[i...i+m].sum == d 
         count += 1
        end
       
        i += 1
    end
    return count
end