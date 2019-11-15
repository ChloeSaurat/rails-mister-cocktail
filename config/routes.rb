Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :plants, only: :destroy
end

Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles, except: :index
end

