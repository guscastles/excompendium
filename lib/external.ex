defmodule External do

  def interpreter(program \\ :python) do
    try do
      {:ok, pid} = program.start()
      pid
    rescue
      e in MatchError -> nil
      e in UndefinedFunctionError -> nil
    end
  end

  def external_call(pid, message) do
    pid |> :python.call(:"external.test", :hello, [message])
  end
end
