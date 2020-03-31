defmodule LiteHouse.Schema.Full do
  use Absinthe.Schema

  import_types LiteHouse.Schema.Math.{Advanced, Basic}

  query do
    import_fields :basic_math
    import_fields :advanced_math
  end
end
