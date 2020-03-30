defmodule LiteHouse.Web do
  use Plug.Builder

  @spec child_spec(term()) :: Supervisor.child_spec()
  def child_spec(_opts) do
    Plug.Cowboy.child_spec(scheme: :http, plug: __MODULE__, options: [port: 27388])
  end

  plug Plug.Parsers,
    parsers: [:json, Absinthe.Plug.Parser],
    pass: ["*/*"],
    json_decoder: Jason

  plug Absinthe.Plug, schema: LiteHouse.Schema
end
