defmodule OperTest do
  use ExUnit.Case
  
  test "calculates factorial of 0" do
    assert Operation.factorial(0) == 1
  end 

  test "calculates factorial of 1" do
    assert Operation.factorial(1) == 1
  end 

  test "calculates factorial of 6" do
    assert Operation.factorial(6) == 720
  end 

  test "adds up the list [1, 2, 3]" do
    assert Operation.add([1, 2, 3]) == 6
  end

  test "returns nil to an empty list" do
    assert Operation.add([]) == nil
  end

  test "writes to the dataBase" do
    assert DataBaseOperation.write("Hello", 6) == :ok
  end

  test "calculates 0 to the power of 2" do
    assert Operation.pow(0, 1) == 0
  end

  test "tries to calculate 0 to the power of 0, raise exception" do
    try do
      Operation.pow(0, 0)
    rescue
      e in RuntimeError -> assert String.starts_with?(e.message, "Base and exponent cannot")
    end
  end

  test "calculates 2 to the power of 0, 1, 2" do
    assert Operation.pow(2, 0) == 1
    assert Operation.pow(2, 1) == 2
    assert Operation.pow(2, 2) == 4
  end
end
