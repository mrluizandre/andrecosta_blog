Rails.application.routes.draw do
  get 'blog/home'
  get 'blog/contact'

  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blog#home"
end
