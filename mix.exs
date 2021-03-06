defmodule DonHubi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :donhubi,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :cowboy, :plug, :yamerl],
      mod: {DonHubi, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.1"},
      {:plug, "~> 1.4"},
      {:ex_guard, "~> 1.2", only: :dev},
      {:yamerl, "~> 0.6.0"},
      {:plug_cowboy, "~> 1.0"}
    ]
  end
end
