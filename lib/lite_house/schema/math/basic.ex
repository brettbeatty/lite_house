defmodule LiteHouse.Schema.Math.Basic do
  use Absinthe.Schema.Notation

  object :basic_math do
    @desc "augend + addend"
    field :add, non_null(:integer) do
      arg :augend, non_null(:integer)
      arg :addend, non_null(:integer)

      resolve fn %{augend: augend, addend: addend}, _info ->
        {:ok, augend + addend}
      end
    end

    @desc "minuend - subtrahend"
    field :subtract, non_null(:integer) do
      arg :minuend, non_null(:integer)
      arg :subtrahend, non_null(:integer)

      resolve fn %{minuend: minuend, subtrahend: subtrahend}, _info ->
        {:ok, minuend - subtrahend}
      end
    end
  end
end
