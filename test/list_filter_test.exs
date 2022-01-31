defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "count odd elements in the list of strings" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 5
    end

    test "count odd elements in the list of numbers" do
      list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

      assert ListFilter.call(list1) == 5
    end
  end
end
