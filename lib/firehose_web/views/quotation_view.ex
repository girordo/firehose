defmodule FirehoseWeb.QuotationView do
  use FirehoseWeb, :view
  alias FirehoseWeb.QuotationView

  def render("index.json", %{quotations: quotations}) do
    %{data: render_many(quotations, QuotationView, "quotation.json")}
  end

  def render("show.json", %{quotation: quotation}) do
    %{data: render_one(quotation, QuotationView, "quotation.json")}
  end

  def render("quotation.json", %{quotation: quotation}) do
    %{
      id: quotation.id,
      text: quotation.text,
      author: quotation.author
    }
  end
end
