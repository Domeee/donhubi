# Don Hubi

## Running dev build

1. `mix don.start`
1. `mix guard`
1. `browser-sync start --proxy localhost:4000 --files build --no-notify`

## Deployment

1. `firebase login`
1. `npm run build-prod`
1. `firebase deploy`
