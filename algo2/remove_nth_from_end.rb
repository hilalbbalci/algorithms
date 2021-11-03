# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    fast = head
    slow = head
    length = 1
    
    n.times do
        length += 1
        if fast.next != nil 
            fast = fast.next
        else 
            if n = length
                return head.next
            else 
                return head
            end
        end
    end
            
    
    while (fast.next != nil)
        fast = fast.next
        slow = slow.next
    end
    
    slow.next = slow.next.next
    return head
    
end