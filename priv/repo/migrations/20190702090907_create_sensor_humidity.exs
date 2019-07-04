defmodule Psycommu.Repo.Migrations.CreateSensorHumidity do
  use Ecto.Migration

  def change do
    create table(:sensor_humidities) do
      add :sensor_id, :map
      add :humidity, :float
      add :status, :integer
      timestamps
    end
  end
end
