defmodule RinhaBackendWeb.ClienteController do
  use RinhaBackendWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "começando a rinha"})
  end

end
