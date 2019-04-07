Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts  # resources de^? la`m gi`
end
