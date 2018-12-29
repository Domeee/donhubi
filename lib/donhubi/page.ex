defmodule DonHubi.Page do
  def compile do
    list()
    |> Enum.map(&compile(&1))
    |> Enum.each(&save(&1))
  end

  defp compile(page) do
    page_file = File.read!("site/pages/" <> page)
    {frontmatter, html_content} = parts(page_file)
    fm = DonHubi.FrontMatter.parse(frontmatter)

    page_content =
      EEx.eval_file("site/layouts/default.html.eex",
        assigns: [content: html_content, frontmatter: fm]
      )

    {page, page_content}
  end

  defp save({page, page_content}) do
    file_name = String.replace_suffix(page, ".yaml", "")
    File.write!("build/#{file_name}", page_content)
  end

  defp list do
    File.ls!("site/pages")
  end

  defp parts(page_content) do
    [frontmatter | content] = String.split(page_content, "\n---\n")
    {frontmatter, Enum.join(content, "\n")}
  end
end
