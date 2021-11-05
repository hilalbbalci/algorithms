


    def dfs(root, target)
        return nil if root.nil?
        return root if root == target

        root.children.each do |child|
            result = dfs(child,target)
                return result unless result.nil?
        end
        return nil
    end

