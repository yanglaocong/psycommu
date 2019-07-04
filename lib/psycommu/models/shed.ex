defmodule Psycommu.Models.Shed do
  use Ecto.Schema

  schema "sheds" do
    belongs_to :company, Psycommu.Models.Company, type: :integer
    many_to_many :products, Psycommu.Models.Product, join_through: "shed_product_mappings", on_delete: :delete_all
    field :no, :integer
    field :name, :string
    timestamps()
  end
end
