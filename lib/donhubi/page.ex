defmodule DonHubi.Page do
  def compile do
    list()
    |> Enum.map(&(compile &1))
    |> Enum.each(&(save &1))
  end

  defp compile(page) do
    page_content = EEx.eval_file "site/layouts/default.html.eex", [content: File.read! "site/pages/" <> page]
    {page, page_content}
  end

  defp save({page, page_content}) do
    File.write! "build/#{page}", page_content
  end

  defp list do
    File.ls! "site/pages"
  end
end
