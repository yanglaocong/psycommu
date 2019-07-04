defmodule Psycommu.Repo.Migrations.CreateShedProductMapping do
  use Ecto.Migration

  def change do
    create table(:shed_product_mappings) do
      add :shed_id, :integer
      add :product_id, :integer
      timestamps
    end
  end
end
