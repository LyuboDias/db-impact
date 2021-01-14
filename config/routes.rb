Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :staff, only: [:index, :show, :new, :create]
  resources :blogs, only: [:index, :show, :new, :create]
  get '/videos' => 'pages#videos'
  get '/design' => 'pages#design'
  get '/terms-of-use' => 'pages#terms'
  get '/privacy-policy' => 'pages#policy'
  get '/sustainability' => 'pages#sustainability'
  get '/transformation' => 'pages#transformation'
end
 