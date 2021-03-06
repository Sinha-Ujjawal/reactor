# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :reactor,
  ecto_repos: [Reactor.Repo]

# Configures the endpoint
config :reactor, ReactorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MAGlRiLETWLnxZ5Tm6piTjf+TBpmOhIJxQyFuoQBKcfCa4UDDDPtJS3Ipk/zVGO2",
  render_errors: [view: ReactorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Reactor.PubSub,
  live_view: [signing_salt: "4R0fpftI"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
