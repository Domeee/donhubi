defmodule Mix.Tasks.Don.Start do
  use Mix.Task

  @shortdoc "Start cowboy to host the site."
  def run(_) do
    Application.start :cowboy
    Application.start :plug
    IO.puts "Starting Cowboy server. Browse to http://localhost:4000/"
    IO.puts "Press <CTRL+C> <CTRL+C> to quit."
    Plug.Adapters.Cowboy.http DonHubi.Plug.Server, []

    :timer.sleep(:infinity)
  end
end
