Rails.application.routes.draw do
  root 'pages#home'
  resources :help_requests
  devise_for :users

  get '/help_requests/activate/:id',
    to: 'help_requests#activate', as: 'activate_help_request'
  get '/help_requests/cancel/:id',
    to: 'help_requests#cancel', as: 'cancel_help_request'
end
