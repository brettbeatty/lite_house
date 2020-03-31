defmodule LiteHouse.Schema.Lite do
  use Absinthe.Schema

  import_types LiteHouse.Schema.Math.Basic

  query do
    import_fields :basic_math
  end
end
