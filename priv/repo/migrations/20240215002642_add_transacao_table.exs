defmodule RinhaBackend.Repo.Migrations.AddTransacaoTable do
  use Ecto.Migration

  def change do
    create table("transacoes") do
      add :valor, :integer, null: false
      add :tipo, :string, null: false
      add :descricao, :string, null: false
      add :id_cliente, :integer, null: false

      timestamps()
    end
  end
end
