defmodule Psycommu.Repo.Migrations.CreateShedArea do
  use Ecto.Migration

  def change do
    create table(:shed_areas) do
      add :shed_id, :map
      add :no, :integer
      timestamps
    end
  end
end
