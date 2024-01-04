defmodule ElixirMixTest.WriteRandomNumberTest do
    use ExUnit.Case
    import Mock

    test "Two different random numbers" do
        ElixirMixTest.WriteRandomNumber.write
        first_number = File.read!(Path.join([
            :code.priv_dir(:elixir_mix_test),
            "file.txt"
        ]))

        ElixirMixTest.WriteRandomNumber.write
        second_number = File.read!(Path.join([
            :code.priv_dir(:elixir_mix_test),
            "file.txt"
        ]))

        assert first_number != second_number
    end

    test "with mock" do
        :ets.new(:contents, [:set, :private, :named_table])

        with_mock File, [write!: fn(_path, content) -> :ets.insert(:contents, {content}) end] do
            ElixirMixTest.WriteRandomNumber.write
            ElixirMixTest.WriteRandomNumber.write
        end

        contents = :ets.tab2list(:contents)
        [first_number | contents] = contents
        [second_number | _] = contents

        first_number != second_number
    end
end