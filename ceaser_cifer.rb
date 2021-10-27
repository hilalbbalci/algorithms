#Write a function that takes a message and an increment 
#amount and outputs the same letters shifted by that amount 
#in the alphabet. Assume lowercase and no punctuation. 
#Preserve spaces.

def caesar_cipher(str, shift)
    alp = ("a".."z").to_a
    str2 = ""
    str.each_char do |c|
        if c == " "
            str2 += c
        else 
        str2 += alp[(alp.index(c) + shift) % 26]
        end
    end 
    return str2
end