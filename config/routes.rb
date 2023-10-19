Rails.application.routes.draw do
  
  devise_for :users
  authenticated :user do
    root "foods#index", as: :authenticated_root
  end

  unauthenticated do 
    root 'foods#splash', as: :unauthenticated_root
  end

  resources :foods, only: %i[index new create destroy]
end
