#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule Pento.Repo do
  use Ecto.Repo,
    otp_app: :pento,
    adapter: Ecto.Adapters.Postgres
end
