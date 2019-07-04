defmodule Psycommu.Models.ShedArea do
  use Ecto.Schema

  schema "sensors" do
    belongs_to :shed, Psycommu.Models.Shed
    has_many :sensors, Psycommu.Models.Sensor, on_delete: :delete_all
    field :no, :integer
    timestamps()
  end
end
