Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  get 'archives' => 'pages#archives', as: :archives
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact

  root 'articles#index'

  resources :articles do
    resources :comments
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
