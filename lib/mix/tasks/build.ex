defmodule Mix.Tasks.Don.Build do
  use Mix.Task
  
  def run(_) do
    # Build Pages
    DonHubi.Page.list
    |> Enum.map(&(DonHubi.Page.compile &1))
    |> Enum.each(&(DonHubi.Page.save &1))

    # Copy Assets
    DonHubi.Assets.copy

    # Copy Styles
    DonHubi.Styles.copy
  end
end