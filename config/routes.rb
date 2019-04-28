Rails.application.routes.draw do
  get 'home_page/index'
  resources :recipes do
    resources :comments
  end 
  root 'home_page#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
