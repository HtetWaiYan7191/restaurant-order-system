Rails.application.routes.draw do
  get '/sign_out_user', to: 'users#sign_out_user', as: 'sign_out_user'
  devise_for :users
  authenticated :user do
    root "shops#index", as: :authenticated_root
  end

  unauthenticated do 
    root 'foods#splash', as: :unauthenticated_root
  end

  resources :shops, only: %i[index show new create destroy] do
    resources :foods, only: %i[index new create destroy]
  end
end
