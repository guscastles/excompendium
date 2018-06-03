defmodule Operation do

  def add([h|t]), do: add(t, h)

  def add([]), do: nil

  defp add([h|t], acc), do: add(t, acc + h)

  defp add([], acc), do: acc

  def factorial(num) when num <= 1, do: 1

  def factorial(num), do: num * factorial(num - 1)

  def pow(base, _) when base == 0, do: nil

  def pow(base, exp) when exp == 0 and base != 0, do: 1

  def pow(base, exp), do: mul(base, pow(base, exp - 1))

  def mul(a, b), do: a * b

end
