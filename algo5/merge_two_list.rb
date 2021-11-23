def merge_two_lists(l1, l2) #[1,2,4] [1,3,4]
 
   return nil if l1 == nil && l2 == nil
    return l1 if l2 == nil
    return l2 if l1 == nil
    
    if l1.val > l2.val
        head = l2
        head.next = merge_two_lists(l1, l2.next)

    else
        head = l1
        head.next = merge_two_lists(l1.next, l2)
    end
    return head
    
end