#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule Pento.Survey.Satisfaction do
  use Ecto.Schema
  import Ecto.Changeset
  alias Pento.Accounts.User
  alias Pento.Catalog.Product

  schema "satisfactions" do
    field :satisfied, :boolean, default: true
    # CHANGED
    belongs_to :user, User
    belongs_to :product, Product
    timestamps()
  end

  @doc false
  def changeset(satisfaction, attrs) do
    satisfaction
    # CHANGED to include assoc. user and product
    |> cast(attrs, [:satisfied, :user_id, :product_id])
    |> validate_required([:satisfied, :user_id, :product_id])
  end
end
