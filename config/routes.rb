Rails.application.routes.draw do

  get 'stocks/charts'
  get 'stocks/index', to: 'stocks#index'
  get 'stocks/google', to: 'stocks#google'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
