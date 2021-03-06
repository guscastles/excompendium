defmodule Excompendium.MixProject do
  use Mix.Project

  def project do
    [
      app: :excompendium,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      #test_coverage: [tool: Coverex.Task]
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:csv, "~> 2.1.1"},
      {:coverex, "~> 1.4.10", only: :test},
      {:excoveralls, "~> 0.8", only: :test},
      {:ex_doc, "~> 0.16", only: :dev, runtime: false},
      {:erlport, "~> 0.9"},
      {:postgrex, ">=0.0.0"},
      {:ecto, "~> 2.1"}
    ]
  end
end
