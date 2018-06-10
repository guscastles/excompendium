defmodule Fibonacci do
  def of(0), do: []
  def of(n) when n > 0, do: _of(n, 1, [1])
  defp _of(max, n, accum) when n >= max, do: accum
  defp _of(max, n, accum), do: _of(max, n + 1, accum ++ [accum |> Enum.reverse |> Enum.take(2) |> Enum.sum])
end
