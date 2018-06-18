defmodule TreeHandler do
  @docmodule """
  Module for the functions for handling the nodes in a tree.
  """
  import List, only: [last: 1, flatten: 1, replace_at: 3]
  import Enum, only: [map: 2]

  def add_node(node, new_id) do
    node.nodes |> update_in(&(&1 ++ [%TreeNode{id: new_id}]))
  end

  def add_node(node, node_id, new_node_id) do
    put_in(node.nodes, node.nodes |> map(&(_add_node(&1, node_id, new_node_id))))
  end

  defp _add_node([], _, _) do
    []
  end
 
  defp _add_node(node, node_id, new_node_id) do 
    cond do
      node.id == node_id -> put_in(node.nodes, node.nodes ++ [%TreeNode{id: new_node_id}]) 
      true -> node
    end
  end

  def create_tree(id \\ 0) do
    put_in(%Tree{}.root.id, id)
  end

  def search(node, id, func \\ fn param -> param end) when not is_list(node) do
    cond do
      node.id == id -> func.(node)
      true -> _search(node.nodes, id, func)
    end
  end

  defp _search([], _, _) do
    nil
  end

  defp _search([h|t], id, func) do
    search(h, id, func) || _search(t, id, func)
  end

  def search_and_add([], _, _) do
    []
  end

  def search_and_add(node, id, new_id) when not is_list(node) do
    search_and_add([node|node.nodes], id, new_id)
  end

  defp _update_node(node, new_id) do
    node.nodes |> put_in(node.nodes ++ [%TreeNode{id: new_id}])
  end

  def search_and_add([h|t], id, new_id) do
    cond do
      h.id == id -> _update_node(h, new_id)
      true -> search_and_add(t, id, new_id) #h.nodes |> put_in(search_and_add_to_nodes(h, h.nodes, id, new_id))
    end
  end

  def search_and_add_to_nodes(parent, [], _, _) do
    []
  end

  def search_and_add_to_nodes(parent, [child|children], id, new_id) do
    cond do
      child.id == id -> _update_node(child, new_id)
      true -> child.nodes |> put_in(search_and_add_to_nodes(parent, children, id, new_id))
    end
  end

  def index(list, id) do
    _index(list, id, 0)
  end

  defp _index([], _, counter) do
    -1
  end

  defp _index([h|t], id, counter) do
    cond do
      h.id == id -> counter
      true -> _index(t, id, counter + 1)
    end
  end

end
