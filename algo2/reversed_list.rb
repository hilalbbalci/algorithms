
class LinkedList 
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end

def reversed_linked_list(head)
    prev_node = nil

    while head != nil 
        next_node = head.next
        head.next = prev_node
        prev_node = head
        head = next_node

    end
return prev_node.val
end
ll2 = LinkedList.new(2, nil)
ll = LinkedList.new(1, ll2)
p reversed_linked_list(ll)
