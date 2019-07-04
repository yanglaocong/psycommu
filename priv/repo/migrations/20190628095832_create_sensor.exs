defmodule Psycommu.Repo.Migrations.CreateSensor do
  use Ecto.Migration

  def change do
    create table(:sensors) do
      add :shed_area_id, :map
      add :no, :integer
      add :status, :integer
      add :type, :integer
      add :model, :integer
      add :pin, :integer
      timestamps
    end
  end
end
