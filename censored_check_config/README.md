Enhanced to run stand-alone to allow config checking on another machine.

Enhancement is to not copy config to /tmp first, so the container doesn't need to be destroyed on every run.
Config is checked directly on /config.

See https://github.com/home-assistant/hassio-addons/issues/374
