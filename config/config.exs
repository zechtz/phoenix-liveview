# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveview,
  ecto_repos: [LiveView.Repo]

# Configures the endpoint
config :liveview, LiveViewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mE1XShlgvJM0Fg/kna0w58xIAmoki6hMMQNrFbkKCSweo1Vs9hXjTwSv8BNm1p/h",
  render_errors: [view: LiveViewWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveView.PubSub,
  live_view: [signing_salt: "VfGT6sBI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
