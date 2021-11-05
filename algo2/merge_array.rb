def merge(nums1, m, nums2, n) #[1,2,3,0,0,0]
     until nums1.length == m 
        nums1.pop    
    end
    i = 0
    while i < nums1.length
        j=0
        while j < nums2.length
            if nums1[i] > nums2[j]
                nums1.insert(i, nums2[j])
                nums2.delete_at(j)
                j -= 1
            end
            j += 1
        end
        i += 1
    end
    nums1.concat(nums2)
  
    return nums1
end