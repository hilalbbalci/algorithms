#Write a function, longest_common_substring(str1, str2) that takes two strings 
#and returns the longest common substring. 
#A substring is defined as any consecutive slice of letters from another string.

#Bonus: solve it in O(m * n) using O(m * n) extra space. (Hint: the solution involves dynamic programming which will be introduced later in the course.)

def longest_common_substring(str1, str2)
word = ''
longest = ''
i = 0
while i < str1.length-1
    puts i
    j = 1
    while j < str1.length
        puts j
    word += str1[i..j]
    puts word
    if str2.include?(word)
        puts word
        if word.length > longest.length
            longest = word
            puts longest
        end
    end 
    word = ""
    j += 1
end
    i+= 1
end
longest
end
puts longest_common_substring("uheli", "hello")
