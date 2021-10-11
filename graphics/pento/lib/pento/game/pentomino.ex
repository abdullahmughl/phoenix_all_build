#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule Pento.Game.Pentomino do
  alias Pento.Game.Shape
  alias Pento.Game.Point

  defstruct [
    name: :i, 
    rotation: 0, 
    reflected: false,
    location: {1, 1}
  ]

  def new(fields \\ []), do: __struct__(fields)

  def rotate(%{rotation: degrees}=p) do
    %{ p | rotation: rem(degrees + 90, 360)}
  end

  def flip(%{reflected: reflection}=p) do
    %{ p | reflected: not reflection}
  end

  def up(p) do
    %{ p | location: Point.move(p.location, {0, -1})}
  end

  def down(p) do
    %{ p | location: Point.move(p.location, {0, 1})}
  end

  def left(p) do
    %{ p | location: Point.move(p.location, {-1, 0})}
  end

  def right(p) do
    %{ p | location: Point.move(p.location, {1, 0})}
  end

  def to_shape(pento) do
    Shape.new(pento.name, pento.rotation, pento.reflected, pento.location)
  end
end
