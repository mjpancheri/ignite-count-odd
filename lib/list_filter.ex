defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.map(fn item -> to_string(item) end)
    |> Enum.filter(fn item -> Regex.match?(~r/\d/, item) end)
    |> Enum.map(fn item -> String.to_integer(item) end)
    |> Enum.filter(fn item -> Integer.is_odd(item) end)
    |> length()
  end
end
