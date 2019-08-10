defmodule Psycommu do
  @moduledoc """
  Documentation for Psycommu.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Psycommu.hello()
      :world

  """
  def hello do
    :world
  end

#  def start do
#    sensors = Psycommu.Models.Company |> Psycommu.Repo.all
##    sensors_num = sensors |> length
#
#    Enum.each sensors, fn(sensor) ->
#      spawn fn ->
#        while true
#          Sensor.Driver.read(sensor)
#          Process.sleep(1000)
#        end
#      end
#    end
#  end

  def test do
    a = Enum.to_list(1..1000)
    Enum.each a, fn(b) ->
      IO.puts b
      pid = spawn fn  ->
        Enum.each(0..9999, fn(x) ->
          Tools.Redis.lpush(b, x)
          Process.sleep(1000)
        end)
      end
      IO.inspect(pid)
    end
  end
end
