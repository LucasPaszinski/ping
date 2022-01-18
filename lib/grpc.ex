defmodule Ping.Grpc do
  def channel do
    Ping.Agent.Pong.get()
  end

  def ping(request) do
    Proto.Pong.Stub.ping(channel(), request)
  end
end
