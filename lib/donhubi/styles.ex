defmodule DonHubi.Styles do
  def copy do
    File.cp_r! "site/styles", "build"
  end
end
