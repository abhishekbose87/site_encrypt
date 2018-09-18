defmodule SiteEncrypt.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    Supervisor.start_link(
      [
        SiteEncrypt.Registry,
        AcmeServer.Registry
      ],
      strategy: :one_for_one,
      name: SiteEncrypt.Supervisor
    )
  end
end
