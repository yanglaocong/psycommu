defmodule Psycommu.Models.ShedProductMapping do
  use Ecto.Schema

  schema "shed_product_mappings" do
    belongs_to :shed, Psycommu.Models.Shed, type: :integer
    belongs_to :product, Psycommu.Models.Product, type: :integer
    timestamps()
  end
end
