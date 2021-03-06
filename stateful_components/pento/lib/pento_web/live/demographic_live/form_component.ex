#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule PentoWeb.DemographicLive.FormComponent do
  use PentoWeb, :live_component
  alias Pento.Survey
  alias Pento.Survey.Demographic

  def update(assigns, socket) do
    {:ok,
     socket
     |> assign(assigns)
     |> assign_demographic()
     |> assign_changeset()}
  end

  def handle_event("save", %{"demographic" => demographic_params}, socket) do
    {:noreply, save_demographic(socket, demographic_params)}
  end

  def handle_event("validate", %{"demographic" => demographic_params}, socket) do
    {:noreply, validate_demographic(socket, demographic_params)}
  end

  def assign_demographic(%{assigns: %{user: user}} = socket) do
    assign(socket, :demographic, %Demographic{user_id: user.id})
  end

  def assign_changeset(%{assigns: %{demographic: demographic}} = socket) do
    assign(socket, :changeset, Survey.change_demographic(demographic))
  end

  def save_demographic(socket, demographic_params) do
    case Survey.create_demographic(demographic_params) do
      {:ok, demographic} ->
        send(self(), {:created_demographic, demographic})
        socket

      {:error, %Ecto.Changeset{} = changeset} ->
        assign(socket, changeset: changeset)
    end
  end

  def validate_demographic(socket, demographic_params) do
    changeset =
      socket.assigns.demographic
      |> Survey.change_demographic(demographic_params)
      |> Map.put(:action, :validate)

    assign(socket, :changeset, changeset)
  end
end
