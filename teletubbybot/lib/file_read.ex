defmodule Teletubbybot.FileRead do
  def quote_list do
    "assets/shrek.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end

  def random_quote do
    quote_list()
    |> Enum.random()
  end
end
