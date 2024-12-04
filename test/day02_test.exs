defmodule Day02Test do
  use ExUnit.Case

  test "part 1" do
    test_input =
      """
      7 6 4 2 1
      1 2 7 8 9
      9 7 6 2 1
      1 3 2 4 5
      8 6 4 4 1
      1 3 6 7 9
      """

    assert Day02.part1(test_input) == 2
  end
end
