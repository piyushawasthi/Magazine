Magazine::Application.routes.draw do
  resources :categories

  resources :articles

  resources :comments

  root :to => "articles#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end