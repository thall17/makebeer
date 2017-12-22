Rails.application.routes.draw do
  match '*path', to: redirect('/503.html'), via: [:get, :post]
  resources :recipes
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index'
end
