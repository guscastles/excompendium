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

end
