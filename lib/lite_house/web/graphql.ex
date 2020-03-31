defmodule LiteHouse.Web.GraphQL do
  @behaviour Plug
  import Plug.Conn, only: [send_resp: 3]

  @impl Plug
  def init(schemas) do
    Map.new(schemas, fn {access, schema} ->
      {access, Absinthe.Plug.init(schema: schema)}
    end)
  end

  @impl Plug
  def call(conn, schemas) do
    case Map.fetch(schemas, conn.private.access) do
      {:ok, opts} ->
        Absinthe.Plug.call(conn, opts)

      :error ->
        send_resp(conn, 404, "Not Found")
    end
  end
end
