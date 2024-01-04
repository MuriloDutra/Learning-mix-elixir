defmodule ElixirMixTestTest do
  use ExUnit.Case
  doctest ElixirMixTest

  test "greets the world" do
    assert ElixirMixTest.hello() == :world
  end


end
