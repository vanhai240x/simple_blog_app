Rails.application.routes.draw do
  root 'posts#index'

  get 'about' => 'pages#about'

  resources :posts  # resources de^? la`m gi`
end
