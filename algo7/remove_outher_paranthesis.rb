def remove_outer_parentheses(s)
  str, stack, start = "", [], 0
  s.chars.each_with_index do |c, i|
    if stack.empty?
      stack << c
      start = i
    else
      if c == '('
        stack << c
      elsif stack[-1] == '('
        stack.pop
        if stack.empty?
          x = s[start+1..i-1]
          str << x if !x.nil?
        end
      end
    end
  end
  str
end