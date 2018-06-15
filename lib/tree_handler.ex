defmodule TreeHandler do
  def update_node(root, node, key_value) do
    %TreeNode{root | nodes: [key_value]}
  end
end
