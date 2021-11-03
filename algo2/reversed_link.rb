
 class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end

end

def reverse_list(head)
    return if head.nil?
    return head if head.next.nil?
    node = head
    until (head.next.nil?)
       head = head.next  
    end
    p head.val
    p remove(node).val
    p reverse_list(remove(node)).val
    head.next = reverse_list(remove(node)) 
    p head.val
    p head.next
    return head 
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
