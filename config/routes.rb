Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #got an error when I changed categories#something -> categories#something
  
  # get '/categories' => 'categories#index' ## index
  # get '/categories/new' => 'categories#new', as: 'categories_new' ##new
  # get '/categories/:id' => 'categories#show', as: 'categories_show' ## show
  # post '/categories' => 'categories#create', as: 'categories_create' #create
  # get '/categories/edit/:id' => 'categories#edit', as: 'categories_edit' # edit
  # post '/categories/:id' => 'categories#update', as: 'categories_update' # edit
  root 'home#index'

  resources :categories do
    resources :tasks
  end

end
