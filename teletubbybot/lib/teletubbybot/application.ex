defmodule Teletubbybot.Application do
  @moduledoc false

  use Application
  alias Alchemy.Client

  defp load_modules do
    use Teletubbybot.Commands
  end

  @impl true
  def start(_type, _args) do
    children = []

    Client.start(Application.get_env(:teletubbybot, :token))
    load_modules()

    opts = [strategy: :one_for_one, name: Teletubbybot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
