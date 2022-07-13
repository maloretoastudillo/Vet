Rails.application.routes.draw do
  
  resources :clients
  resources :pets, shallow: true do
    resources :pethistories
  end

  root 'pets#index'
end
