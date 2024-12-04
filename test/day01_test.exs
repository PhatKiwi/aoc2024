defmodule Day01Test do
  use ExUnit.Case

  test "part 1" do
    test_input =
      """
      3   4
      4   3
      2   5
      1   3
      3   9
      3   3
      """

    assert Day01.part1(test_input) == 11
  end

  test "part 1 test two" do
    test_input =
      """
      3   4
      4   3
      2   5
      """

    assert Day01.part1(test_input) == 3
  end

  test "part 1 solution" do
    {:ok, input} = File.read("lib/Day01/input.txt")
    assert Day01.part1(input) == 1_590_491
  end
end
