Rails.application.routes.draw do
  #Ingredients
  get "/ingredients", to: "ingredients#index", as: "ingredients"
  get "/ingredients/new", to: "ingredients#new", as: "new_ingredient"
  get "/ingredients/:id", to: "ingredients#show", as: "ingredient"
  get "/ingredients/:id/edit", to: "ingredients#edit", as: "edit_ingredient"
  post "/ingredients", to: "ingredients#create"
  patch "/ingredients/:id", to: "ingredients#update"
  delete "/ingredients/:id", to: "ingredients#destroy"

  get "/recipes", to: "recipes#index", as: "recipes"
  get "/recipes/new", to: "recipes#new", as: "new_recipe"
  get "/recipes/:id", to: "recipes#show", as: "recipe"
  get "/recipes/:id/edit", to: "recipes#edit", as: "edit_recipe"
  post "/recipes", to: "recipes#create"
  patch "/recipes/:id", to: "recipes#update"
  delete "/recipes/:id", to: "recipes#destroy"
end
