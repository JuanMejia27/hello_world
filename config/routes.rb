Rails.application.routes.draw do
  resources :detalle_ordens
  resources :ordens
  resources :clientes
  resources :productos

  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
