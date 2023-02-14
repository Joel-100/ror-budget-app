Rails.application.routes.draw do
  root 'splash_screen#index'
  devise_for :users
end
