  Rails.application.routes.draw do

  #Votação melhor console 99vidas
  get 'melhor_console/elim'
  post 'melhor_console/semi'
  post 'melhor_console/final'
  post 'melhor_console/fim'
  get 'melhor_console/resultados'
  get 'melhor_console_99vidas', to: 'melhor_console#elim'

  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  get 'blog/home'
  get 'blog/contact'
  get 'blog/post/:id', to: 'posts#view', as: 'blog_post_view'
  get 'blog/tags/:tag', to: 'blog#home', as: :tag


  get 'whatsapp', to: 'utilities#whatsapp', as: 'open_whatsapp_number'
  get 'mercadopago', to: 'utilities#mercadopago', as: 'mercadopago'
  get 'amorexigente_certificado', to: 'utilities#amorexigente_certificado', as: 'amorexigente_certificado'
  devise_for :users
  resources :posts do
    collection do
      get :archived
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "blog#home"
end
