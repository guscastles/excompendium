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
end
