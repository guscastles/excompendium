defmodule ExcompendiumTest do
  use ExUnit.Case
  doctest Excompendium

  defp _iterate([], accum) do
    accum
  end

  defp _iterate([h|t], accum) do
    _iterate(t, accum ++ [elem(h, 1)])
  end

  test "greets the world" do
    assert Excompendium.hello() == :world
  end

  test "ranges and pipes" do
    result = 1..4
             |> Enum.map(&(Integer.to_string(&1)))
             |> IO.puts()
    assert result == :ok
  end

  test "reads the test CSV file" do
    raw_data = "../rsc/test.csv" |> Path.expand(__DIR__) |> File.stream! |> CSV.decode |> Enum.take(2)
    contents = _iterate(raw_data, [])
    assert contents |> List.first() |> List.first() == "ID"
  end
end
