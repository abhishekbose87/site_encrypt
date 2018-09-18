defmodule SiteEncrypt.Logger do
  @moduledoc false

  require Logger

  @type log_fun :: (() -> Logger.message() | {Logger.message(), keyword()})
  @type log_result :: :ok | {:error, :noproc} | {:error, term()}

  @spec log(SiteEncrypt.log_level(), Logger.message() | log_fun()) :: log_result()
  def log(nil, _), do: :ok
  def log(level, chardata_or_fun), do: Logger.log(level, chardata_or_fun)
end
