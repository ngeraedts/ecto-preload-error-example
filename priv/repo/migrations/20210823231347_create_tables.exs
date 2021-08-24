defmodule MyApp.Repo.Migrations.CreateTables do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :name, :text
    end

    create table(:addresses) do
      add :street, :text
      add :city, :text
      add :state, :text
      add :country, :text
      add :description, :text

      add :person_id, references(:people)
    end

    create table(:phone_numbers) do
      add :number, :text
      add :description, :text

      add :person_id, references(:people)
    end

  end
end
