defmodule GildedRoseTest do
  use ExUnit.Case

  test "begin the journey of refactoring" do
    items = [%Item{name: "foo", sell_in: 0, quality: 0}]
    %{name: firstItemName} = GildedRose.update_quality(items) |> List.first()
    assert "fixme" == firstItemName
  end
end
