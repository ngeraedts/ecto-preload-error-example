defmodule MyAppTest do
  use ExUnit.Case

  alias MyApp.Person

  test "normal query" do
    assert [%Person{}] = MyApp.get_person(1)
  end

  test "error query" do
    assert :error = MyApp.get_person("a")
  end

  test "error query - expected result" do
    assert :error = MyApp.get_person2("a")
  end
end
