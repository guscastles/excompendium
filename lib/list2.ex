defmodule List2 do
  @moduledoc ~S"""
  New list module, for training purposes.
  """
  def index(list \\ [], element \\ :any_element)
  def index(list, _) when not is_list(list), do: index()
  def index([], _), do: -1
  def index(list, element), do: _index(list, element, 0)
  defp _index([], _, _), do: index([])
  defp _index([h|_], element, position) when h == element, do: position 
  defp _index([h|t], element, position) when h != element, do: _index(t, element, position + 1)

  def reverse(list \\ [])
  def reverse(list) when not is_list(list), do: reverse()
  def reverse([]), do: [] 
  @doc """
  This is being used to test the debugging features or Elixir
  """
  def reverse([h|t]), do: _reverse(t, [h])
  defp _reverse([], accum), do: accum 
  defp _reverse([h|t], accum), do: _reverse(t, [h] ++ accum)
end
