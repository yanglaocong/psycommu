defmodule Psycommu.Repo.Migrations.CreateSensorTemperature do
  use Ecto.Migration

  def change do
    create table(:sensor_temperatures) do
      add :sensor_id, :map
      add :temperature, :float
      add :status, :integer
      timestamps
    end
  end
end
