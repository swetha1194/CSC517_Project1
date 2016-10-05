Rails.application.routes.draw do
  resources :reservations
  resources :members
  resources :rooms
  resources :admins
  root "welcome#index"
  get    'signupm'   => 'members#new'
  get    'signupa'   => 'admins#new'
  get    'login'    => 'sessions#new'
  post   'login'    => 'sessions#create'
  get    'logout'   => 'sessions#destroy'
  get    'book/:id' => 'reservations#new' , as: "book"
  post   'book' => 'reservations#create'
  get    'memhistory/:id'  =>  'reservations#memhistory', as: "memhistory"
  get    'schedule/:id'  =>  'reservations#schedule', as: "schedule"
  get "email" => "reservations#email", as: "email"
  post "email_friend" => "reservations#email_friend", as: "email_friend"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
