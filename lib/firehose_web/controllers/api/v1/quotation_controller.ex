defmodule FirehoseWeb.Api.V1.QuotationController do
  use FirehoseWeb, :controller

  alias Firehose.Content

  def index(conn, _params) do
    quotations = Content.list_quotations()
    render(conn, "index.json", quotations: quotations)
  end

  def show(conn, %{"id" => id}) do
    quotation = Content.get_quotation!(id)
    render(conn, "show.json", quotation: quotation)
  end
end
