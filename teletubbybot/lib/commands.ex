defmodule Teletubbybot.Commands do
  use Alchemy.Cogs

  alias Teletubbybot.FileRead

  Cogs.def ping do
    Cogs.say("Pong!")
  end

  Cogs.def shrek do
    word = FileRead.random_quote()
    Cogs.say(word)
  end
end
