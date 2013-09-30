defmodule Beer do

  def sing(start, finish // 0) do
    Enum.map_join(start..finish, "\n", verse &1) <> "\n"
  end

  def verse(number) do
    """
    #{ String.capitalize bottles number } of beer on the wall, #{ bottles number } of beer.
    #{ breakdown number }
    """
  end

  defp breakdown(0), do: "Go to the store and buy some more, 99 bottles of beer on the wall."
  defp breakdown(number), do: "Take #{ take_down number } down and pass it around, #{ bottles number - 1 } of beer on the wall."

  defp take_down(1), do: "it"
  defp take_down(number), do: "one"

  defp bottles(0), do: "no more bottles"
  defp bottles(1), do: "1 bottle"
  defp bottles(number), do: "#{number} bottles"
end
