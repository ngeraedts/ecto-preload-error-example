defmodule MyApp do
  import Ecto.Query

  alias MyApp.Person
  alias MyApp.Address
  alias MyApp.Repo

  def get_person(address_id) do
    from(p in Person)
    |> preload(addresses: ^from(a in Address, where: [id: ^address_id]))
    |> preload(:phone_numbers)
    |> Repo.all()
  rescue
    Ecto.Query.CastError ->
      :error
  end

  def get_person2(address_id) do
    from(p in Person)
    |> preload(addresses: ^from(a in Address, where: [id: ^address_id]))
    |> Repo.all()
  rescue
    Ecto.Query.CastError ->
      :error
  end
end
