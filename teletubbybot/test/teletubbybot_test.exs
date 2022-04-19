defmodule TeletubbybotTest do
  use ExUnit.Case
  doctest Teletubbybot

  test "greets the world" do
    assert Teletubbybot.hello() == :world
  end
end
