Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemons, :trainers
  get "/battlerecords", to: "battle_records#index"
  get "/battlerecords/:id", to: "battle_records#show"
  put "/battlerecords/:id", to: "battle_records#update"
  # TODO: add routes for battle records
end
