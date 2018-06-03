defmodule CSVTest do
  @moduledoc """
  TDD for the CSV module, which will be the initial
  database for the application.

  """
  use ExUnit.Case

  test "Read a non-existent CSV file" do
    contents = File.read("no_file.csv")
    assert {:error, :enoent} == contents
  end
  
  test "Read a CSV file" do
    contents = File.read("rsc/test.csv")
    assert elem(contents, 0) == :ok
  end

end
