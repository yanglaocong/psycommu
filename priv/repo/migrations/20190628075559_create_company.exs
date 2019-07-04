defmodule Psycommu.Repo.Migrations.CreateCompany do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string
      add :sort_name, :string
      add :admin_id, :integer
      timestamps
    end
  end
end
