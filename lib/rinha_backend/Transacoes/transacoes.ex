defmodule RinhaBackend.Transacoes.Transacoes do
  use Ecto.Schema
  import Ecto.Changeset

  schema "transacoes" do 
    field :valor, :integer
    field :tipo, :string
    field :descricao, :string
    field :id_cliente, :integer
  end
  
  def changeset(transacao \\ %__MODULE__{}, params) do
    transacao
    |> cast(params, [:valor, :tipo, :descricao, :id_cliente])
    |> validate_required([:valor, :tipo, :descricao, :id_cliente])
    |> validate_length(:descricao, less_than_or_equal_to: 10)
  end
end
