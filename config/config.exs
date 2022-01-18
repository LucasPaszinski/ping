import Config

config :grpc, start_server: true

config :ping, grpc_address: "localhost:50051"
