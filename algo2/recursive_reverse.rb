def reverse(str)
return str if str.length < 2

new_str = str[-1]
new_str += reverse(str[0...-1])
end

