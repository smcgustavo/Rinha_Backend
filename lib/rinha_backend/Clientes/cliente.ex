defmodule RinhaBackend.Clientes.Cliente do
  use Ecto.Schema
  import Ecto.Changeset
  
  schema "clientes" do
    field :limite, :integer
    field :saldo_inicial, :integer
  end
  
  def changeset(cliente \\ %__MODULE__{}, params) do
    cliente
    |> cast(params, [:limite, :saldo_inicial])
    |> validate_required([:limite, :saldo_inicial])
    |> validate_number(:saldo_inicial, greater_than: 0)
  end
end
