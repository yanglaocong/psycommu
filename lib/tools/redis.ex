defmodule Tools.Redis do

  def set(key, value) do
    Redix.command(client(), ["SET", key, value])
  end

  def get(key) do
    Redix.command(client(), ["GET", key])
  end

  # list
  def lpush(queue, value) do
    Redix.command(client(), ["LPUSH", queue, value])
  end

  def lpop(queue) do
    Redix.command(client(), ["LPOP", queue])
  end

  def llen(queue) do
    Redix.command(client(), ["LLEN", queue])
  end

  defp client do
    {:ok, conn} = Redix.start_link(host: Application.get_env(:redix, :host), port: Application.get_env(:redix, :port))
    conn
  end
end
