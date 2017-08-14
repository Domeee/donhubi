defmodule Mix.Tasks.Don.Clean do
  use Mix.Task
  
  def run(_) do
    File.rm_rf! "build"
  end
end
