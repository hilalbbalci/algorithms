#Implement strStr().

#Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.





def str_str(haystack, needle)
        if needle == "" 
            return 0
        end
        arr =  []
        i = 0
     while i <= haystack.length - (needle.length)
        
       arr <<  haystack[i...i+needle.length]
        
        i += 1
     end
      if arr.include?(needle)
          return arr.index(needle)
      else
          return -1
      end
    
end