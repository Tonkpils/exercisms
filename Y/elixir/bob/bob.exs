defmodule Teenager do
  @moduledoc """
  Bob is a very person. It answers to messages you give him
  """

  @doc """
  Returns 'Fine. Be that way.' for silent messages
  Returns 'Woah, chill out!' for loud messages
  Returns 'Sure.' for questions
  Returns 'Whatever.' for everything else
  """
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
