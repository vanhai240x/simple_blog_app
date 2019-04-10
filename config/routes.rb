Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about'

  resources :posts do   # resources ???
    resources :comments
  end

end
