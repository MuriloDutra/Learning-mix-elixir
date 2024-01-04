defmodule ElixirMixTest.Server do
    use GenServer

    def start_link(_) do
        GenServer.start_link(__MODULE__, :ok, name: :server)
    end

    def init(:ok) do
        {:ok, %{}}
    end

    def handle_cast(:write, _) do
        ElixirMixTest.WriteRandomNumber.write
        {:noreply, %{}}
    end
end