defmodule ExcompendiumTest do
  use ExUnit.Case
  doctest Excompendium

  defp iterate([], accum), do: accum

  defp iterate([h|t], accum) do
    next = elem(h, 1)
    iterate(t, accum ++ [next])
  end

  test "greets the world" do
    raw_data = "./rsc/test.csv" |> File.stream! |> CSV.decode |> Enum.take(2)
    contents = iterate(raw_data, [])
    assert contents.first().first() == "ID"
    assert Excompendium.hello() == :world
  end
end
