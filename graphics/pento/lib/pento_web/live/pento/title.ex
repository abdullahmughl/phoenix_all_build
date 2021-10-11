#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
defmodule PentoWeb.Pento.Title do
  use Surface.Component
  
  prop message, :string, required: true
  
  def render(assigns) do
    ~H"""
      <h1>{{ @message }}</h1>
    """
  end
end