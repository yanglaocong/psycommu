#defmodule Sensor.Driver do
#
#  @dht_exe Application.get_env(:nerves_dht, :dht_exe, "dht")
#
#  def read(sensor) do
#    cmd = Application.app_dir(:nerves_dht, Path.join("priv", @dht_exe))
#    args = [sensor.type, sensor.pin]
#  end
#end
