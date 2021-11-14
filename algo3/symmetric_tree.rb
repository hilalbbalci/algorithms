def is_symmetric(root)
    
    return true if !root
    helper(root.left, root.right)

    
 

end

def helper(left, right)
    return true if !left && !right
    return false if (!left && right) || (left && !right)
    return (left.val == right.val) && helper(left.left, right.right) && helper(left.right, right.left)
   
end 