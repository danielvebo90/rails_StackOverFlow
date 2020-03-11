Rails.application.routes.draw do
  root 'questions#index'

  resources :questions do
   resources :answers
   resources :comments
   resources :votes, only: [:create, :destroy]
 end

 resources :answers do
   resources :comments
   resources :votes, only: [:create, :destroy]
 end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
