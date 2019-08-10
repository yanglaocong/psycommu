defmodule Sensor.Driver do
  def read(sensor) do
    cmd = Application.app_dir(:psycommu, Path.join("lib/sensor/c_drivers", "dht.sh"))
    args = [sensor.type, sensor.pin]
    {result, exit_status} = System.cmd(cmd, args)

    if exit_status == 0 do
      [humidity_str, temperature_str] = String.split(result)

      {humidity, ""} = Float.parse(humidity_str)
      {temperature, ""} = Float.parse(temperature_str)

      {:ok, humidity, temperature}
    else
      {:error, dht_error_code_to_reason(exit_status)}
    end
  end

  defp dht_error_code_to_reason(255), do: :timeout
  defp dht_error_code_to_reason(254), do: :checksum
  defp dht_error_code_to_reason(253), do: :argument
  defp dht_error_code_to_reason(252), do: :gpio
end
