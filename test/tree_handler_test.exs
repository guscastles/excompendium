defmodule TreeHandlerTest do
  use ExUnit.Case
  import List, only: [first: 1, last: 1]
  import TreeHandler
  import TreeHandler.Search

  test "creates a testing tree" do
    tree = create_tree()
    assert tree.root.id == 0
  end

  test "adds one node to the root" do
    root = create_tree().root
    new_root = search_and_add(root, 0, 2)
    assert last(new_root.nodes).id == 2
  end

  test "adds one node to a given node" do
    root = search_and_add(search_and_add(create_tree().root, 0, 2), 0, 3)
    new_root = search_and_add(root, 3, 4)
    assert check_node_id(new_root, 4)
  end

  test "adds one node to a given node not in the root" do
    root = search_and_add(search_and_add(create_tree().root, 0, 2), 0, 3)
    new_root = search_and_add(root, 2, 4)
    new_new_root = search_and_add(new_root, 3, 5)
    new_new_new_root = search_and_add(new_new_root, 5, 6)
    assert first(new_root.nodes).id == 2
    assert last(new_root.nodes).id == 3
    assert check_node_id(new_new_root, 2)
    assert check_node_id(new_new_root, 5)
  end

  test "updates the root's nodes, adding one more" do
    root = search_and_add(create_tree().root, 0, 2)
    new_root = search_and_add(root, 0, 3)
    assert first(new_root.nodes).id == 2
    assert last(new_root.nodes).id == 3
  end

  test "searches for a given id in the tree" do
    root = search_and_add(search_and_add(search_and_add(create_tree().root, 0, 2), 0, 3), 3, 4)
    assert search(root, 1) == nil
    [0, 2, 3, 4] |> Enum.map(&(assert search(root, &1) != nil))
  end

  test "returns the index of a given TreeNode element in a list" do
    list = [%TreeNode{id: 2}, %TreeNode{id: 1}]
    assert index(list, 1) == 1
    assert index(list, 2) == 0
  end

  defp check_node_id(node, id) do
    search(node, id) != nil
  end

end
