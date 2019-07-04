defmodule Psycommu.Models.Product do
  use Ecto.Schema

  schema "products" do
    belongs_to :company, Psycommu.Models.Company, type: :integer
    many_to_many :sheds, Psycommu.Models.Shed, join_through: "shed_product_mappings"
    field :name, :string
    timestamps()
  end
end
