defmodule DonHubi.Page do
  def compile(page) do
    page_content = EEx.eval_file "site/layouts/default.html.eex", [content: File.read! "site/pages/" <> page]
    {page, page_content}
  end

  def save({page, page_content}) do
    File.write! "build/#{page}", page_content
  end

  def list do
    File.ls! "site/pages"
  end
end
