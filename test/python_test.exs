defmodule Python.Test do
  use ExUnit.Case

  test "prints hello world" do
    pid = External.interpreter()
    assert pid, "Process ID is invalid"
    assert External.external_call(pid, "Hello from Gus :)") == "Hello from Gus :)"
    :python.stop(pid)
  end
end
