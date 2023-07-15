Rails.application.routes.draw do
  root to: 'foods#index'
  resources :foods
  get '/all' => 'foods#all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
