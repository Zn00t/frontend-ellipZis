Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'
  get '/search', to: 'search#get'
  get '/search/result/:id', to: 'result#index', as: :result

end
