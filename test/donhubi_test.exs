defmodule DonHubiTest do
  use ExUnit.Case
  doctest DonHubi

  test "greets the world" do
    assert DonHubi.hello() == :world
  end
end
