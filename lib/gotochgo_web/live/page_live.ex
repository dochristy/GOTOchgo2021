defmodule GotochgoWeb.PageLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    companies = Gotochgo.list_companies()
    {:ok, assign(socket, :companies, companies)}
  end

  def render(assigns) do
    GotochgoWeb.PageView.render("index.html", assigns)
  end
end
