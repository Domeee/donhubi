use ExGuard.Config

guard("site", run_on_start: true)
|> command("mix don.build")
|> watch(~r/site/)
|> notification(:auto)