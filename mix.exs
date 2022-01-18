defmodule Ping.MixProject do
  use Mix.Project

  def project do
    [
      app: :ping,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Ping.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:cowlib, "~> 2.9.0", override: true},
      {:google_protos, "~> 0.1"},
      {:grpc, github: "elixir-grpc/grpc"},
      {:protobuf, "~> 0.8.0"}
    ]
  end
end
