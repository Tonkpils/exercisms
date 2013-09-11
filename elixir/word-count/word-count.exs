defmodule Words do
  def count(string) do
    string |> downcase |> split_words |> aggregate
  end

  defp downcase(string), do: String.downcase(string)
  defp split_words(string), do: Regex.scan(%r/\w+/, string) |> List.flatten
  defp aggregate(word_list) do
    Enum.reduce word_list, HashDict.new, fn(word, accumulator) -> 
      accumulator |> update_dictionary word 
    end  
  end
  defp update_dictionary(dictionary, word), do: HashDict.update(dictionary, word, 1, &1 + 1)
end
