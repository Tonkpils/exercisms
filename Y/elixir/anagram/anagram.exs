defmodule Anagram do

  def match(word, word_list) do
    word_list |> Enum.filter(fn(candidate) -> anagram?(word, candidate) end)
  end

  defp anagram?(word, candidate) do
    word != candidate && normalize(word) == normalize(candidate)
  end

  defp normalize(word) do 
    word 
      |> String.downcase 
      |> String.to_char_list! 
      |> Enum.sort 
  end
end
