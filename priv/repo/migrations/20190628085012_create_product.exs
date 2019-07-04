defmodule Psycommu.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :company_id, :integer
      timestamps
    end
  end
end
