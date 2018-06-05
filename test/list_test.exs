defmodule List2Test do
  use ExUnit.Case

  test "iterates through a list until finding the position of a given value" do
    assert List2.index([], 0) == -1
    assert List2.index([1], 1) == 0
    assert List2.index([1], 2) == -1
    assert List2.index([1, 2], 2) == 1
    assert List2.index([2, 3, 4, 1, 2], 1) == 3
    assert List2.index([2, 3, 4, 1, 2], 2) == 0
  end

  test "reverses the list" do
    assert List2.reverse([]) == []
    assert List2.reverse([1]) == [1]
    assert List2.reverse([1, 2]) == [2, 1]
  end
end
