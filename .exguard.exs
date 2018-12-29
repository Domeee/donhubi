use ExGuard.Config

guard("assets")
|> command("mix don.build assets")
|> watch(~r{site/assets})
|> notification(:auto)

guard("layouts")
|> command("mix don.build pages")
|> watch(~r{site/layouts})
|> notification(:auto)

guard("pages")
|> command("mix don.build pages")
|> watch(~r{site/pages})
|> notification(:auto)

guard("scripts")
|> command("mix don.build scripts")
|> watch(~r{site/scripts})
|> notification(:auto)

guard("styles")
|> command("mix don.build styles")
|> watch(~r{site/styles})
|> notification(:auto)
