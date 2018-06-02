defmodule ErlangTest do
  use ExUnit.Case
  doctest Erlang

  test "greets the world" do
    assert Erlang.hello() == :world
  end
end
