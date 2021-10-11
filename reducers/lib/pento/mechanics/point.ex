#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule Pento.Point do
  def move({x, y}, {change_x, change_y}) do
    {x + change_x, y + change_y}
  end
end