Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :sports, only: [:index, :show] do
    resources :events
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
