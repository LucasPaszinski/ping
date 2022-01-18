defmodule Ping.Application do
  use Application

  def start(_,_) do
    children = [
      Ping.Agent.Pong
    ]

    opts = [strategy: :one_for_one, name: Pong.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
