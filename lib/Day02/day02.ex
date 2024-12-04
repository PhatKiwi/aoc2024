defmodule Day02 do
  def part1(input) do
    parse(input)
    |> Enum.count(fn lists -> is_safe?(lists) end)
  end

  defp parse(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(fn list -> String.split(list, " ") |> Enum.map(&String.to_integer/1) end)
  end

  defp is_safe?([a, a | _tail]), do: false

  defp is_safe?([a, b | _tail] = levels) do
    diff = a - b
    is_safe(levels, div(diff, abs(diff)))
  end

  defp is_safe(levels, sign) do
    levels
    |> Enum.chunk_every(2, 1)
    |> Enum.all?(fn chunk ->
      case chunk do
        [a, b] ->
          (sign * (a - b)) in 1..3

        [_] ->
          true
      end
    end)
  end
end
