defmodule Elixir101.Util do
  import StringCannotMultiplyError

  def multiply(_, b) when b < 0 do
    raise RuntimeError
  end

  def multiply(input, _b) when is_binary(input) do
    raise StringCannotMultiplyError
  end

  def multiply(list, b) do
    Enum.map(list, fn(number) -> number * b end)
  end

  def split(string) do
    String.split(string)
  end

  def prev_num(list, number) do
    Enum.at(list, number - 1)
  end
end
