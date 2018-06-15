defmodule TreeHandler do

  def create_tree() do
    import Tree
    import TreeNode
    root = %TreeNode{id: 1}
    put_in(root, %{nodes: [%TreeNode{id: 2}]})
    tree = %Tree{}
    put_in(tree, root)
  end

end

