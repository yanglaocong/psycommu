defmodule PsycommuTest do
  use ExUnit.Case
  doctest Psycommu

  test "greets the world" do
    assert Psycommu.hello() == :world
  end
end
