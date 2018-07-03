Rails.application.routes.draw do
resources :sales, only: [:new, :create, :index, :edit, :update]
root 'sales#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
