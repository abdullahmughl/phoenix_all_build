#--
#Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like
#--
[
  import_deps: [:ecto, :phoenix],
  inputs: ["*.{ex,exs}", "priv/*/seeds.exs", "{config,lib,test}/**/*.{ex,exs}"],
  subdirectories: ["priv/*/migrations"]
]
