defmodule RinhaBackendWeb.TransacaoController do
  use RinhaBackendWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{message: "ok"})
  end
end
