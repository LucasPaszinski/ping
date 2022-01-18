defmodule Proto.PongRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t()
        }

  defstruct query: ""

  field :query, 1, type: :string
end