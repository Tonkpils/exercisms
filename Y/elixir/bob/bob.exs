defmodule Teenager do
  def hey(message) do
    cond do
      String.length(message) == 0 -> "Fine. Be that way."
      String.upcase(message) == message ->  "Woah, chill out!"
      String.ends_with?(message, "?") -> "Sure."
      true ->  "Whatever."
    end
  end
end
