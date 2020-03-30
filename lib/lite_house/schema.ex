defmodule LiteHouse.Schema do
  use Absinthe.Schema

  query do
    field :available, :boolean do
      resolve fn _args, _info -> {:ok, true} end
    end
  end
end
