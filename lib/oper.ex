defmodule Operation do
  @moduledoc """
  Operations module, with mathematical functions.
  """
  @doc ~S"""
  Adds up the elements in the given list.
  """
  def add([]), do: nil
  def add([h|t]), do: _add(t, h)
  defp _add([h|t], acc), do: _add(t, acc + h)
  defp _add([], acc), do: acc
  def factorial(num) when num <= 1, do: 1
  def factorial(num), do: num * factorial(num - 1)
  def pow(0, 0), do: raise "Base and exponent cannot be zero simultaneously"
  def pow(0, exponent) when exponent != 0, do: 0
  def pow(base, 0) when base != 0, do: 1
  def pow(base, exp), do: base * pow(base, exp - 1)
end
