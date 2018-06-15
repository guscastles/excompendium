import Tree
tree = %{children: [%{children: [], id: 1, title: "Title 1"}], id: 0, title: "Title 0"}
Tree.iter(tree)
