defmodule ExcompendiumWeb.PageController do
  use ExcompendiumWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
