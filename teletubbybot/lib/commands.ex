defmodule Teletubbybot.Commands do
  use Alchemy.Cogs

  alias Teletubbybot.FileRead

  Cogs.def ping do
    Cogs.say("Pong!")
  end

  Cogs.def shrek do
    word = FileRead.random_quote("shrek")
    Cogs.say(word)
  end

  Cogs.def bee do
    sentence = FileRead.random_quote("bee")
    Cogs.say(sentence)
  end
end
