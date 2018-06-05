defmodule List2 do
  @moduledoc ~S"""
  New list module, for training purposes.
  """
  def index([], _), do: -1
  def index(l, element), do: _index(l, element, 0)
  defp _index([], _, _), do: -1
  defp _index([h|_], element, position) when h == element, do: position 
  defp _index([h|t], element, position) when h != element, do: _index(t, element, position + 1)

  def reverse([]), do: [] 
  def reverse([h|t]), do: _reverse(t, [h])
  defp _reverse([], accum), do: accum 
  defp _reverse([h|t], accum), do: _reverse(t, [h] ++ accum)
end
