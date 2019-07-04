defmodule Psycommu.Models.Sensor do
  use Ecto.Schema

  schema "sensors" do
    belongs_to :shed_area, Psycommu.Models.ShedArea
    field :no, :integer
    field :status, :integer
    field :type, :integer
    field :model, :integer
    field :pin, :integer
    timestamps()
  end
end
