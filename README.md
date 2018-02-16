# DonHubi

## Installation (ArchLinux)

* Elixir

  `pacman -S elixir`

  `mix deps.get`

  `mix don.build`

* Node/nvm

* browser-sync

## Running dev build

1. `mix don.build`
1. `mix don.start`
1. `mix guard`
1. `browser-sync start --proxy localhost:4000 --files build --no-notify`
