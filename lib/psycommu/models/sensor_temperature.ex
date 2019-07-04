defmodule Psycommu.Models.SensorTemperature do
  use Ecto.Schema

  schema "sensor_temperatures" do
    belongs_to :sensor, Psycommu.Models.Sensor
    field :temperature, :float
    field :status, :integer
    timestamps()
  end
end
