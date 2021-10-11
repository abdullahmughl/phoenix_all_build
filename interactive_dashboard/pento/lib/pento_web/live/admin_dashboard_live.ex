#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule PentoWeb.AdminDashboardLive do
  use PentoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:survey_results_component_id, "survey-results")}
  end

end
