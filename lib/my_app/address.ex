defmodule MyApp.Address do
  use Ecto.Schema

  schema "addresses" do
    field(:street)
    field(:city)
    field(:state)
    field(:country)
    field(:description)

    belongs_to(:person, MyApp.Person)
  end
end
