defmodule OperTest do
  use ExUnit.Case
  
  test "Factorial of 0 Test" do
    assert Operation.factorial(0) == 1
  end 

  test "Factorial of 1 Test" do
    assert Operation.factorial(1) == 1
  end 

  test "Factorial of 6 Test" do
    assert Operation.factorial(6) == 720
  end 

  test "Add Test" do
    assert Operation.add([1, 2, 3]) == 6
  end

  test "DataBase Write" do
    assert DataBaseOperation.write("Hello", 6) == :ok
  end

  test "Multiplication Test" do
    assert Operation.mul(0, 0) == 0
    assert Operation.mul(1, 0) == 0
    assert Operation.mul(1, 5) == 5
    assert Operation.mul(2, 5) == 10
  end

  test "Number to the Power Test" do
    assert Operation.pow(0, 0) == nil
    assert Operation.pow(1, 0) == 1
    assert Operation.pow(1, 5) == 1
    assert Operation.pow(5, 2) == 25
    assert Operation.pow(3, 3) == 27
  end

end
