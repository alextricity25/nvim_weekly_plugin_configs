# nvim_weekly_plugin_configs

Configurations used for the weekly neovim plugin video series

These instructions will walk through how to run a Docker container
with neovim installed and these configurations applied.

## Running with docker compose

This will run a docker container with the nvim installed from source

```
docker compose up --build -d
```

```
docker attach neovim-dev
```

## Setup

Once attached to the container, open Neovim with the command `nvim`.
You will initially get some error messages saying that plugins are not
installed. That's OK. Hit `Enter` and then run `PackerInstall`.
Restart neovim.

