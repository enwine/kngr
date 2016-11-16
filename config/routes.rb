Rails.application.routes.draw do
  get '/unete', to: 'join#index', as: :join
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
