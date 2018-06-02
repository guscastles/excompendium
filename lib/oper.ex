defmodule Operation do

  def add([h|t]), do: add(t, h)

  def add([]), do: nil

  defp add([h|t], acc), do: add(t, acc + h)

  defp add([], acc), do: acc

  def factorial(num) when num == 0, do: 1

  def factorial(num), do: num * factorial(num - 1)

end
