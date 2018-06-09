defmodule Fibonacci do
  def of(0), do: []
  def of(n) when n < 3, do: [1] ++ of(n - 1)
  def of(n), do: _of(n - 2, of(2))
  defp _of(0, accum), do: accum
  defp _of(n, accum), do: _of(n - 1, accum ++ [accum |> Enum.reverse |> Enum.take(2) |> Enum.sum])
end
