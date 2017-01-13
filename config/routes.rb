Rails.application.routes.draw do
  resources :appointments
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboards#main'
  get '/lorna', to: 'dashboards#lorna', as: 'lorna'
  get '/luke', to: 'dashboards#luke', as: 'luke'
end
