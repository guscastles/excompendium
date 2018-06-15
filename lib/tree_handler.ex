defmodule TreeHandler do
  @docmodule """
  Module for the functions for handling the nodes in a tree.
  """

  def add_node(node, new_id) do
    node.nodes |> update_in(&(&1 ++ [%TreeNode{id: new_id}]))
  end

  def add_node(root, node_id, new_node_id) do

    fn_add_node = fn (node) -> 
                    cond do
                      node.id == node_id -> %TreeNode{node | nodes: node.nodes ++ [%TreeNode{id: new_node_id}]} 
                      true -> node
                    end
                  end

    %TreeNode{root | nodes: (root.nodes |> Enum.map(&(fn_add_node.(&1))))}
  end

  def create_tree(id \\ 0) do
    put_in(%Tree{}.root.id, id)
  end

end
