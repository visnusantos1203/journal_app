Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #got an error when I changed categories#something -> categories#something
  
  root 'home#index'

  resources :categories do
    resources :tasks
  end

end
