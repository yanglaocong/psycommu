defmodule Psycommu.Models.Company do
  use Ecto.Schema
#  import Ecto.Changeset
  schema "companies" do
    has_many :sheds, Psycommu.Models.Shed, on_delete: :delete_all         # 产品
    has_many :products, Psycommu.Models.Product, on_delete: :delete_all    # 大棚
    field :name, :string
    field :sort_name, :string
    field :admin_id, :integer
    timestamps()
  end

#  def changeset(company, params \\ %{}) do
#    company
#    |> Ecto.Changeset.cast(params, [:name, :sort_name, :admin_id])
#    |> Ecto.Changeset.validate_required([:name])
#  end
end
