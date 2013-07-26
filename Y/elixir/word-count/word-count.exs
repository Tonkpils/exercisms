defmodule Words do
  def count(string) do
    string |> sanitize |> aggregate
  end

  defp sanitize(string), do: Regex.scan(%r/[a-z0-9]+/, String.downcase(string))
  defp aggregate(word_list) do
    Enum.reduce word_list, HashDict.new, fn(word, acc) ->
      HashDict.merge acc, [{word, 1}], fn(_word, count, word_value) ->
          count + word_value
      end
    end
  end
end
