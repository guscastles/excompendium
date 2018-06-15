defmodule TreeHandlerTest do
  use ExUnit.Case
  import TreeHandler, only: [update_node: 3]
  import List, only: [first: 1]

  test "updates one node from the root" do
    assert _create_tree().root.id == 1
    new_root = update_node root, first(root.nodes), %TreeNode{id: 2}
    assert new_root.id == 1
    assert first(new_root.nodes).id == 2
  end

  defp _create_tree() do
    import Tree
    import TreeNode
    %Tree{root: %TreeNode{id: 1, nodes: [%TreeNode{id: 2}]}}
  end
end
