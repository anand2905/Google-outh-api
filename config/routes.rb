Rails.application.routes.draw do
 root to: "home#show"
 get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
 get 'auth/:provider/callback', to: 'sessions#create'

 namespace :api do
    namespace :v1 do
      get 'logout', to: 'sessions#destroy', as: 'logout'
      get 'auth/failure', to: redirect('/')
      get 'home', to: 'home#show'
      get 'me', to: 'me#show', as: 'me'

    end
  end
end
