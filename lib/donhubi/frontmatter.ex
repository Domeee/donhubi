defmodule DonHubi.FrontMatter do
  def parse(yaml) do
    DonHubi.Yaml.convert(%{}, hd(:yamerl_constr.string(yaml)))
  end
end
