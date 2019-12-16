Rails.application.routes.draw do
  root 'static_pages#home'
  get '/result', to:'static_pages#result'
  get '/urus',   to:'static_pages#home'
  resources :urus, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
