Rails.application.routes.draw do
  get 'bookings/confirmed' #default, *maybe we have to change the sintax of the path

devise_for :users
root to: 'pages#home'

resources :plans do
    resources :bookings
    resources :reviews
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
