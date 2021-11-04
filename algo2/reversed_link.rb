
 class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end

end

def reverse_list(head)
    prev_node = nil
    while head != nil
        nextNode = head.next
        head.next = prev_node
        prev_node = head
        head = nextNode
    end
    return prev_node
end
def remove(head) 
    return head if head.nil?
    if head.next.nil?
        head = nil
        return 
    end
    prev_node = nil
    
    until (head.next.nil?)
        prev_node = head 
        head = head.next 
    end
    prev_node.next = nil 
    return prev_node
end



ln2 = ListNode.new(2, nil)

ln = ListNode.new(1, ln2)
puts reverse_list(ln).val

# puts reverse_list(ln).next.val
