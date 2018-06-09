defmodule FibonacciTest do
  use ExUnit.Case

  test "sequence of 0 elements" do
    assert Fibonacci.of(0) == []
  end

  test "sequence of 1 elements" do
    assert Fibonacci.of(1) == [1]
  end

  test "sequence of 2 elements" do
    assert Fibonacci.of(2) == [1, 1]
  end

  test "sequence of 3 elements" do
    assert Fibonacci.of(3) == [1, 1, 2]
  end

  test "sequence of 4 to 20 elements" do
    assert :end == 4..20 |> Enum.to_list |> _show_fibo()
  end

  defp _show_fibo([]), do: :end
  defp _show_fibo([h|t]) do
    Fibonacci.of(h) |> IO.inspect()
    _show_fibo(t)
  end
end
