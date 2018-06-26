  Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'blog/home'
  get 'blog/contact'
  get 'blog/post/:id', to: 'posts#view', as: 'blog_post_view'


  get 'whatsapp/:phone', to: 'utilities#whatsapp', as: 'open_whatsapp_number'
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blog#home"
end
