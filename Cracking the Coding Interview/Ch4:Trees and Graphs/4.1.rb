# Given a directed graph, design an algorithm to find out whether there is a route between two nodes.

# 4.1 Route Between Nodes
# Given a directed graph, design an algorithm to find out whether there is a
#   route between two nodes.
#

# Discussion:
#   This can be solved with a DFS or BFS.
#

# This is a BFS that begins searching from start_node and ends when either the
#   end_node is found, or all nodes connected to start_node have been explored
#
# Time Complexity: O(n), as it may explore every node



def find_route(adj, i, f)
  return false unless adj[i] && adj[f]
  return true if i == f
  bfs_queue = []
  visited = {}
  visited[i] = true
  bfs_queue << adj[i].first

  while !bfs_queue.empty?
    current = bfs_queue.shift
    return true if current == f
    visited[current] ? break : visited[current] = true
    adj[current].each { |n| bfs_queue << n }
  end

  return false
end
