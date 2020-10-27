defmodule MetagraphSDKTest do
  use ExUnit.Case
  doctest MetagraphSDK

  test "greets the world" do
    assert MetagraphSDK.hello() == :world
  end
end
