Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemons, :trainers
  get "/battlerecords/:id", to: "battle_records#show"
  # TODO: add routes for battle records
end
