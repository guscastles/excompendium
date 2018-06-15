defmodule TreeHandlerTest do
  use ExUnit.Case
  import List, only: [last: 1]

  test "creates a testing tree" do
    tree = _create_tree()
    assert tree.root.id == 0
  end

  test "adds one node to the root" do
    root = _create_tree().root
    new_root = _add_node(root, 2)
    assert last(new_root.nodes).id == 2
  end

  test "updates one of the root's nodes" do
    root = _add_node(_create_tree().root, 2)
    new_root = root.nodes |> update_in(&(&1 ++ [%TreeNode{id: 3}]))
    assert last(new_root.nodes).id == 3
  end

  defp _add_node(node, new_id) do
    node.nodes |> put_in([%TreeNode{id: new_id}])
  end

  defp _create_tree(id \\ 0) do
    put_in(%Tree{}.root.id, id)
  end
end
