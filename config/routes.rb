Rails.application.routes.draw do
  get 'pages/info'
  post 'ratings' => "ratings#create"
  resources :ideas
  root to: redirect('/ideas')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
