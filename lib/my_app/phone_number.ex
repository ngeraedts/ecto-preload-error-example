defmodule MyApp.PhoneNumber do
  use Ecto.Schema

  schema "phone_numbers" do
    field(:number, :string)
    field(:description, :string)

    belongs_to(:person, MyApp.Person)
  end
end
