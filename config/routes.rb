Rails.application.routes.draw do
  root "pages#home"
  get "about", to:"pages#about"

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
mount Rails::Pretty::Logger::Engine => "/rails-pretty-logger"
Rails::Pretty::Logger::Engine.routes.draw do

resources :dashboards, only: [:index] do
  get :logs, on: :collection
  post :logs, on: :collection
  post :clear_logs, on: :collection
end
end

end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
