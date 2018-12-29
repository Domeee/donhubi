defmodule DonHubi.Assets do
  def copy do
    File.rm_rf!(build_folder())
    File.mkdir!(build_folder())
    File.cp_r!("site/assets", build_folder())
  end

  defp build_folder do
    "build/assets"
  end
end
