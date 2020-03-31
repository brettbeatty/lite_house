defmodule LiteHouse.Schema.Math.Advanced do
  use Absinthe.Schema.Notation

  object :advanced_math do
    @desc "multiplier * multiplicand"
    field :multiply, non_null(:integer) do
      arg :multiplier, non_null(:integer)
      arg :multiplicand, non_null(:integer)

      resolve fn %{multiplier: multiplier, multiplicand: multiplicand}, _info ->
        {:ok, multiplier * multiplicand}
      end
    end

    @desc "dividend / divisor"
    field :divide, non_null(:integer) do
      arg :dividend, non_null(:integer)
      arg :divisor, non_null(:integer)

      resolve fn %{dividend: dividend, divisor: divisor}, _info ->
        {:ok, div(dividend, divisor)}
      end
    end
  end
end
