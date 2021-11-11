#dfs

def has_path(graph, src, dst)

    return true if src == dst
    graph[src].each do |child|
        if has_path(graph, child, dst) == true
            return true
        end
    end

    return false
end

#bfs


def has_path_2(graph, src, dst)
    queue = [src]

    while !queue.empty?
        current  = queue.shift
        return true if current == dst
        graph[current].each do |child|
            queue << child
        end
    end
    return false
end