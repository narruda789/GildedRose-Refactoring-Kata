defmodule GildedRoseTest do
  use ExUnit.Case

  describe "update_quality" do
    test "lowers quality for every item" do
      items = [%Item{name: "Cheez-Its", sell_in: 0, quality: 10}]
      %{quality: cheezitQuality} = GildedRose.update_quality(items) |> List.first()
      assert cheezitQuality == 8
    end

    test "lowers sell_in for every item" do
      items = [%Item{name: "Cheez-Its", sell_in: 14, quality: 0}]
      %{sell_in: cheezitSellIn} = GildedRose.update_quality(items) |> List.first()
      assert cheezitSellIn == 13
    end
  end
end
