defmodule MyApp.Person do
  use Ecto.Schema

  schema "people" do
    field(:name, :string)

    has_many(:addresses, MyApp.Address)
    has_many(:phone_numbers, MyApp.PhoneNumber)
  end
end
