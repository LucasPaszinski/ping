defmodule Proto.Pong.Service do
  @moduledoc false
  use GRPC.Service, name: "proto.Pong"

  rpc :ping, Proto.PongRequest, Proto.PongResponse
end

defmodule Proto.Pong.Stub do
  @moduledoc false
  use GRPC.Stub, service: Proto.Pong.Service
end