#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule PentoWeb.Pento.Shape do
  use Surface.Component
  alias PentoWeb.Pento.Point

  prop points, :list
  prop fill, :string
  prop name, :string

  def render(assigns) do
    ~H"""
      <Point :for= {{ {x, y} <- @points}}
        x="{{ x }}"
        y="{{ y }}"
        fill="{{ @fill }}"
        name="{{ @name }}" />
    """
  end
end
