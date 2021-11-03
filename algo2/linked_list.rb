class LinkedList 

    attr_accessor :head
    
    def initialize  
       self.head = nil
    end

    def add(value)
        if head.nil?
            self.head = Node.new(value, nil)
        else
            lastnode = self.head
            while !(lastnode.nextNode.nil?)
                lastnode = lastnode.nextNode
            end
            lastnode.nextNode = Node.new(value, nil)
        end
    end

    def prepend(value)
        if head.nil?
            self.head = Node.new(value, nil)
        else
            old_head = head
            self.head = Node.new(value, old_head)
        end
    end

    def remove(value)
        return if head.nil?
        node = head
        prev_node = nil
        until (node.nil?)
            if (node.val == value)
                if !prev_node.nil?
                 prev_node.nextNode = node.nextNode
                else
                    self.head = nil
                    return
                end
            end
            prev_node = node
            node = node.nextNode
        end      
    end

    def find(value)
        node = self.head
        while !node.nil?
            if node.val == value
                return true
            end
            node = node.nextNode
        end
        return false
    end

    private
    class Node
        attr_accessor :val, :nextNode

        def initialize(val, nextNode)
            self.val = val
            self.nextNode = nextNode
        end
    end

end

ll = LinkedList.new
ll.add(10)
ll.add(20)
puts ll.head.val
puts ll.head.val
puts ll.head.nextNode.val
ll.remove(20)
puts ll.head.nextNode.nil?
ll.remove(10)
puts ll.head.nil?



