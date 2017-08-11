defmodule Mix.Tasks.Sslcerts.Renew do
  use Mix.Task

  @shortdoc "Renew an existing certificate"

  @moduledoc"""
  Renew an existing certificate, if no cert exists then create one.

      sslcerts renew

  For scripting, it is best to use this one, as it will create a certificate if
  none exist.  Not really sure why you would use `sslcerts create` over `sslcerts renew`,
  but I will leave it for now.

  This also assumes that `bits` has been installed,
  if that's not the case, then ensure that you first run

      sslcerts install bits

  ## Available configurations

    * `--email`     The email associated with the certificate
    * `--domains`   The domains you are certifying
    * `--webroot`   The root of your static assets to allow certbot to confirm it's your domain
    * `--ini`       The path of the certbot configs (defaults to /etc/letsencrypt/letsencrypt.ini)
    * `--keysize`   The size of the certificate key (defaults to 4096)

  """
  def run(args), do: Sslcerts.Cli.Main.run({:create, args})

end