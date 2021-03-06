Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes, only: %i[index show]
  root to: 'recipes#index'
  match '/:status', to: 'errors#show', constraints: { status: /\d{3}/ }, via: :all
end
