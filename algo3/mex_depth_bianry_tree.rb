def max_depth(root, count = 0)
 
    return 0 if root == nil
    left = max_depth(root.left)
    right = max_depth(root.right)
    count += [left, right].max
   return count += 1
    
end