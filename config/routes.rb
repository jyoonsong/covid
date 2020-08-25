Rails.application.routes.draw do
  namespace :admin do
      resources :languages
      resources :language_confirmeds
      resources :confirmeds
      resources :language_sis
      resources :language_gus
      resources :language_dongs
      resources :sis
      resources :gus
      resources :dongs

      root to: "languages#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "languages#index"

  resources :confirmeds do
    collection {post :import}
  end

  get "/:id", to: "languages#index"
  get "/:id/:si_id", to: "languages#index"
  post "/:id/:si_id", to: "languages#index"

  
end
