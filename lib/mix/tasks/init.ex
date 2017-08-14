defmodule Mix.Tasks.Don.Init do
  use Mix.Task
  
  def run(_) do
    File.mkdir! "build"
  end
end
