Rails.application.routes.draw do
  root 'splash_screen#index'
  devise_for :users

  resources :users do
    resources :groups do
      resources :entities
      resources :group_entities
    end
  end

end
