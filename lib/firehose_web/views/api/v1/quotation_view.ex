defmodule FirehoseWeb.Api.V1.QuotationView do
  use FirehoseWeb, :view
  alias FirehoseWeb.Api.V1.QuotationView

  def render("index.json", %{quotations: quotations}) do
    %{data: render_many(quotations, QuotationView, "quotation.json")}
  end

  def render("show.json", %{quotation: quotation}) do
    %{data: render_one(quotation, QuotationView, "quotation.json")}
  end

  def render("quotation.json", %{quotation: quotation}) do
    %{author: quotation.author, text: quotation.text}
  end
end
