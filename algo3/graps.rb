def built_graph(edges)
    graph = {}
    edges.each do |edge|
        a, b = edge
        graph[a] = [] if !graph[a]
        graph[b] = [] if !graph[b]
        graph[a] << b
        graph[b] << a
    end

    return graph
end

def undirected_path(edges, src, dst)
    graph = built_graph(edges)
    return has_path(graph, src, dst, Set.new())
end

def has_path(graph,src,dst,visited)
    return true if src == dst
    return false if visited.include?(src)
    visited.add(src)

    graph[src].each do |child|
        return true if has_path(graph, child, dst, visited) == true
    end
    return false
end