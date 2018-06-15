defmodule TreeHandlerTest do
  use ExUnit.Case
  import List, only: [first: 1, last: 1]
  import TreeHandler

  test "creates a testing tree" do
    tree = create_tree()
    assert tree.root.id == 0
  end

  test "adds one node to the root" do
    root = create_tree().root
    new_root = add_node(root, 2)
    assert last(new_root.nodes).id == 2
  end

  test "adds one node to a given node" do
    root = add_node(add_node(create_tree().root, 2), 3)
    new_root = add_node(root, 3, 4)
    assert check_node_id(new_root, 4)
    assert check_node_id(add_node(new_root, 4, 5), 5)
  end

  test "updates the root's nodes, adding one more" do
    root = add_node(create_tree().root, 2)
    new_root = add_node(root, 3)
    assert first(new_root.nodes).id == 2
    assert last(new_root.nodes).id == 3
  end

  defp check_node_id(node, id) do
    (node.nodes 
     |> Enum.filter(&(&1.id == 3)) 
     |> Enum.map(&(&1.nodes)) 
     |> List.flatten()
     |> Enum.map(&(&1.id))) == [id]
  end

end
