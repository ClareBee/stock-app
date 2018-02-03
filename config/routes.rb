Rails.application.routes.draw do

  get 'stocks/charts', to: 'stocks#charts'
  get 'stocks/index', to: 'stocks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
