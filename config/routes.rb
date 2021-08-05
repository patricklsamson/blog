Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'archives' => 'pages#archives', as: :archives
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact

  root 'articles#index'

  resources :articles do
    resources :comments
  end
end
