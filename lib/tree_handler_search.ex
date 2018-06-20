defmodule TreeHandler.Search do
  @docmodule """
  Module for the functions for handling the nodes in a tree.
  """
  import List, only: [last: 1, flatten: 1, replace_at: 3]
  import Enum, only: [map: 2]
  import TreeHandler

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

  def search_and_add(node, id, new_id) when not is_list(node) do
    cond do
      node.id == id -> _update_node(node, new_id)
      node.nodes == [] -> node
      true -> node.nodes |> put_in(_search_and_add(node.nodes, id, new_id, []))
    end
  end

  defp _search_and_add([], _, _, accum) do
    accum
  end

  defp _search_and_add([h|t], id, new_id, accum) do
    _search_and_add(t, id, new_id, accum ++ [search_and_add(h, id, new_id)])
  end

  defp _update_node(node, new_id) do
    node.nodes |> put_in(node.nodes ++ [%TreeNode{id: new_id}])
  end

end
