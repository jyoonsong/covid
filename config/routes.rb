Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "languages#index"
  get "/:id", to: "languages#index"
  get "/:id/:si_id", to: "languages#index"
  post "/:id/:si_id", to: "languages#index"
  
end
