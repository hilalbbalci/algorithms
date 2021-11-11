def has_path(graph, src, dst)

    return true if src == dst
    graph[src].each do |child|
        if has_path(graph, child, dst) == true
            return true
        end
    end

    return false
end