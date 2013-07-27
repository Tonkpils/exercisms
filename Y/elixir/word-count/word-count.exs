defmodule Words do
  def count(string) do
    string |> downcase |> sanitize |> aggregate
  end

  defp downcase(string), do: String.downcase(string)
  defp sanitize(string), do: Regex.scan(%r/[a-z0-9]+/, string)
  defp aggregate(word_list) do
    Enum.reduce word_list, HashDict.new, fn(word, accumulator) -> 
      accumulator |> update_dictionary word 
    end  
  end
  defp update_dictionary(dictionary, word), do: HashDict.update(dictionary, word, 1, fn(value) -> value + 1 end)
end
