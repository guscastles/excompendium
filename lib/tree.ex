defmodule Tree do

  defstruct root: %TreeNode{}

  def iter([]) do
    :end
  end
  
  def iter(map) when is_map(map) do        
    IO.inspect map.id
    iter(map.nodes) 
  end

  def iter([h|t]) do       
    iter(h)
    iter(t)
  end
end
