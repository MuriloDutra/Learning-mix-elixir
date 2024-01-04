use Mix.Config

config :elixir_mix_test, ElixirMixTest.Scheduler, jobs: [
    {"* * * * *", fn -> GenServer.cast(:server, :write) end}
]