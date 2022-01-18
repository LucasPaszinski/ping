defmodule Ping.Agent.Pong do
  use Agent

  @grpc_address Application.get_env(:ping, :grpc_address)

  def start_link(initial_value) do
    {:ok, channel} = GRPC.Stub.connect(@grpc_address)
    Agent.start_link(fn -> channel end, name: __MODULE__)
  end

  def get do
    Agent.get(__MODULE__, & &1)
  end
end
