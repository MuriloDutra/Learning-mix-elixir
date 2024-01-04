defmodule ElixirMixTest.Application do
    use Application

    def start(_type, _args) do
        children = [
            ElixirMixTest.Server,
            ElixirMixTest.Scheduler
        ]

        opts = [strategy: :one_for_one, name: ElixirMixTest.Supervisor]
        Supervisor.start_link(children, opts)
    end
end