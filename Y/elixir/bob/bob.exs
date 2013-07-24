defmodule Teenager do
  def hey(message) do
    cond do
      Message.silent?(message)   -> "Fine. Be that way."
      Message.loud?(message)     ->  "Woah, chill out!"
      Message.question?(message) -> "Sure."
      true ->  "Whatever."
    end
  end
end

defmodule Message do
  def silent?(message) do
    String.length(message) == 0
  end
  def loud?(message) do
    String.upcase(message) == message
  end
  def question?(message) do
    String.ends_with?(message, "?")
  end
end
