defmodule ElixirMixTest.WriteRandomNumber do 
    def write do
        filepath = Path.join([
            :code.priv_dir(:elixir_mix_test),
            'file.txt'
        ])

        random_number = :rand.uniform(1000)
        File.write!(filepath, "Random number: #{random_number}")
    end
end