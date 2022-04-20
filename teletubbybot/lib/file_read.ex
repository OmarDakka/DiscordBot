defmodule Teletubbybot.FileRead do
  def quote_list(movie) do
    "assets/#{movie}.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/, trim: true)
  end

  def random_quote(movie) do
    quote_list(movie)
    |> Enum.random()
  end
end
