defmodule BirgelenAppWeb.PageController do
  use BirgelenAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
