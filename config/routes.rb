Rails.application.routes.draw do
  devise_for :users

  root to: 'boards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get :boards , to: "boards#index"
  get '/boards/new', to: 'boards#new'
  post 'boards', to: 'boards#create'
  get '/boards/:id/edit', to: 'boards#edit', as: :patch_board
  get '/boards/:id', to: 'boards#show', as: :board
  patch 'boards/:id', to: 'boards#update'

end
