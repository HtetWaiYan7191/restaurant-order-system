Rails.application.routes.draw do
  
  devise_for :users
  
  resources :foods, only: %i[index new create destroy]
end
