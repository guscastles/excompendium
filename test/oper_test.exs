defmodule OperTest do
  use ExUnit.Case
  
  test "Factorial Test" do
    assert Operation.factorial(6) == 720
  end 

end
