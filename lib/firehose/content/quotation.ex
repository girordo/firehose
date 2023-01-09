defmodule Firehose.Content.Quotation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "quotations" do
    field :author, :string
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(quotation, attrs) do
    quotation
    |> cast(attrs, [:text, :author])
    |> validate_required([:text, :author])
    |> unique_constraint([:text, :author])
  end
end
