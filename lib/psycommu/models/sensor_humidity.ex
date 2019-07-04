defmodule Psycommu.Models.SensorHumidity do
  use Ecto.Schema

  schema "sensor_humidities" do
    belongs_to :sensor, Psycommu.Models.Sensor
    field :humidity, :float
    field :status, :integer
    timestamps()
  end
end
