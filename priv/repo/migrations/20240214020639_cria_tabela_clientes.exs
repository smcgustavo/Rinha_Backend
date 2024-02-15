defmodule RinhaBackend.Repo.Migrations.CriaTabelaClientes do
  use Ecto.Migration

  def change do
    create table("clientes") do
      #add :id, :integer, null: false
      add :limite, :integer, null: false
      add :saldo_inicial, :integer, null: false
    end
  end
end
