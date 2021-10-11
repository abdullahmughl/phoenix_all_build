#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule PentoWeb.PageController do
  use PentoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
