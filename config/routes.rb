Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :pages, only: [:index, :show] do
      resources :links, only: [:show], shallow: true
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#index"
end
