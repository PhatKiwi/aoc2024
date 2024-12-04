defmodule Day01 do
  def part1(input) do
    {list1, list2} = get_lists(input)
    calculate(Enum.sort(list1), Enum.sort(list2))
  end

  defp get_lists(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&String.split(&1, "   "))
    |> Enum.map(fn [a, b] -> {String.to_integer(a), String.to_integer(b)} end)
    |> Enum.unzip()
  end

  defp calculate(sortedList1, sortedList2) do
    Enum.zip(sortedList1, sortedList2)
    |> Enum.reduce(0, fn {a, b}, acc -> acc + abs(a - b) end)
  end
end
