defmodule Mix.Tasks.Write do
    @moduledoc """
    Some text here.

    `mix write`
    """

    use Mix.Task

    @shortdoc "Write a random number into a file"
    def run(_) do
        ElixirMixTest.WriteRandomNumber.write
    end
end