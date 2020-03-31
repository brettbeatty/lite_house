defmodule LiteHouse.Web.Authentication do
  @behaviour Plug
  import Plug.Conn, only: [get_req_header: 2, put_private: 3]

  @impl Plug
  def init(opts) do
    opts
  end

  @impl Plug
  def call(conn, _opts) do
    put_private(conn, :access, access_level(conn))
  end

  @spec access_level(Plug.Conn.t()) :: :full | :lite | nil
  defp access_level(conn) do
    case get_req_header(conn, "authorization") do
      ["full access"] ->
        :full

      ["lite access"] ->
        :lite

      _header ->
        nil
    end
  end
end
