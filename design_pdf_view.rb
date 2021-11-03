def designerPdfViewer(h, word)
    # Write your code here
    alp = ("a".."z").to_a
    t = 0
    word.each_char do |c|
       i = alp.index(c) 
       if t <= h[i]
       t = h[i]
       end
    end
    t*word.length
end