defmodule Mix.Tasks.Don.Build do
  use Mix.Task
  
  def run([]) do    
    # Clean
    File.rm_rf! "build"

    # Init build structure
    File.mkdir! "build"

    # Compile and copy Pages
    DonHubi.Page.compile

    # Copy Assets
    DonHubi.Assets.copy

    # Compile JavaScript and SASS
    System.cmd "npm", ["run", "build"], into: IO.stream(:stdio, :line)
  end

  def run(["assets"]) do
    DonHubi.Assets.copy
  end

  def run(["pages"]) do
    Application.start :yamerl
    DonHubi.Page.compile
  end

  def run(["scripts"]) do
    System.cmd "npm", ["run", "build"], into: IO.stream(:stdio, :line)
  end

  def run(["styles"]) do
    System.cmd "npm", ["run", "build"], into: IO.stream(:stdio, :line)
  end
end