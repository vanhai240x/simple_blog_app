Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do # resources de^? la`m gi`
    resources :comments
  end
end
