defmodule LiteHouse.Application do
  use Application
  alias LiteHouse.Web

  @impl Application
  def start(_start_type, _start_args) do
    Supervisor.start_link([Web], strategy: :one_for_one, name: LiteHouse.Supervisor)
  end
end
