class MinStack
    
    attr_accessor :arr
    def initialize()
        self.arr = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        arr.unshift(val)
    end


=begin
    :rtype: Void
=end
    def pop()
        arr.delete_at(0)
    end


=begin
    :rtype: Integer
=end
    def top()
        return arr[0]
    end


=begin
    :rtype: Integer
=end
    def get_min()
        arr.min
    end


end
