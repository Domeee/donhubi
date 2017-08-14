defmodule DonHubi.Assets do
  def copy do
    File.cp_r! "site/assets", "build"
  end
end
