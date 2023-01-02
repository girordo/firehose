defmodule Firehose.Repo.Migrations.CreateQuotations do
  use Ecto.Migration

  def change do
    create table(:quotations) do
      add :text, :text
      add :author, :string

      timestamps()
    end
  end
end
