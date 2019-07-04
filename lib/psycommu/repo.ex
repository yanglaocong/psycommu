defmodule Psycommu.Repo do
  use Ecto.Repo,
    otp_app: :psycommu,
    adapter: Ecto.Adapters.Postgres
end
