def intersect(nums1, nums2)
    arr = []
    hash = Hash.new(0)
    nums1.each {|n| hash[n] += 1}
    hash2 = Hash.new(0)
    nums2.each {|n| hash2[n] += 1}

    if hash.length < hash2.length
        hash.keys.each do |k|
            if hash2[k]
                if hash2[k] < hash[k]
                    hash2[k].times do
                    arr << k
                    end
                else
                    hash[k].times do 
                        arr << k
                    end
                end
            end
        end
    else
            hash2.keys.each do |k|
            if hash[k]
                if hash2[k] < hash[k]
                    hash2[k].times do
                    arr << k
                    end
                else
                    hash[k].times do 
                        arr << k
                    end
                end
            end 
            end
    end
            return arr
    
end