Rails.application.routes.draw do
  resources :users, only: [:index, :show,] do 
  	resources :songs, only: [:destroy]
  end


  get 'playlists/create'

  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :songs do 
  	resources :playlists, only: [:create]
  end

  resources :genres
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "songs#index"

  #devise_for :users, 

end
