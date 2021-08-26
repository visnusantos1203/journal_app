Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #got an error when I changed category#something -> categories#something
  
  get '/categories' => 'category#index' ## index
  get '/categories/new' => 'category#new', as: 'category_new' ##new
  get '/categories/:id' => 'category#show', as: 'category_show' ## show
  post '/categories' => 'category#create', as: 'category_create' #create
  get '/categories/edit/:id' => 'category#edit', as: 'category_edit' # edit
  post '/categories/:id' => 'category#update', as: 'category_update' # edit
end
