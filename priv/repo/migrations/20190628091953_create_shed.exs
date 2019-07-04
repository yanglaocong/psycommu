defmodule Psycommu.Repo.Migrations.CreateShed do
  use Ecto.Migration

  def change do
    create table(:sheds) do
      add :no, :integer
      add :name, :string
      add :company_id, :integer
      timestamps
    end
  end
end
