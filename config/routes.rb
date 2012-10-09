Blog::Application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
                     controllers: {omniauth_callbacks: "omniauth_callbacks"}

  #devise_scope :user do match '/auth/github/callback', to: 'omniauth_callbacks#github' end
  #devise_scope :user do match '/auth/failure', to: 'omniauth_callbacks#failure' end

  resources :articles
  root to: 'articles#index'
end
