defmodule Operation do

  def add([h|t], acc) do
    add(t, acc + h)
  end

  def add([], acc) do
    acc
  end

end
