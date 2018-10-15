Rails.application.routes.draw do
  get 'welcome/index'
  root :to => 'welcome#index'
match '/saludo', :to => 'home#saludo', :via => [:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
