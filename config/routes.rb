Rails.application.routes.draw do
  get '/', to: 'application#welcome'

  get '/shelters', to: 'shelters#index'
  get '/shelters/new', to: 'shelters#new'
  get '/shelters/:id', to: 'shelters#show'
  post '/shelters', to: 'shelters#create'
  get '/shelters/:id/edit', to: 'shelters#edit'
  patch '/shelters/:id', to: 'shelters#update'
  delete '/shelters/:id', to: 'shelters#destroy'

  get '/pets', to: 'pets#index'
  get '/pets/:id', to: 'pets#show'
  get '/pets/:id/edit', to: 'pets#edit'
  patch '/pets/:id', to: 'pets#update'
  delete '/pets/:id', to: 'pets#destroy'

  get '/veterinary_offices', to: 'veterinary_offices#index'
  get '/veterinary_offices/new', to: 'veterinary_offices#new'
  get '/veterinary_offices/:id', to: 'veterinary_offices#show'
  post '/veterinary_offices', to: 'veterinary_offices#create'
  get '/veterinary_offices/:id/edit', to: 'veterinary_offices#edit'
  patch '/veterinary_offices/:id', to: 'veterinary_offices#update'
  delete '/veterinary_offices/:id', to: 'veterinary_offices#destroy'

  get '/veterinarians', to: 'veterinarians#index'
  get '/veterinarians/:id', to: 'veterinarians#show'
  get '/veterinarians/:id/edit', to: 'veterinarians#edit'
  patch '/veterinarians/:id', to: 'veterinarians#update'
  delete '/veterinarians/:id', to: 'veterinarians#destroy'

  get '/shelters/:shelter_id/pets', to: 'shelters#pets'
  get '/shelters/:shelter_id/pets/new', to: 'pets#new'
  post '/shelters/:shelter_id/pets', to: 'pets#create'

  get '/veterinary_offices/:veterinary_office_id/veterinarians', to: 'veterinary_offices#veterinarians'
  get '/veterinary_offices/:veterinary_office_id/veterinarians/new', to: 'veterinarians#new'
  post '/veterinary_offices/:veterinary_office_id/veterinarians', to: 'veterinarians#create'

  get '/applications', to: 'applications#index'
  get '/applications/new', to: 'applications#new'
  get '/applications/:id', to: 'applications#show'
  post '/applications', to: 'applications#create'
  get '/applications/:id/edit', to: 'applications#edit'
  patch '/applications/:id', to: 'applications#update'
  delete '/applications/:id', to: 'applications#destroy'

  get 'applications/:id/:pet_id', to: 'applications#add_pet'
  post 'applications/:id', to: 'applications#submit_pet'

  get '/admin/shelters', to: 'admin_shelters#index'

  get '/admin/applications', to: 'admin_applications#index'
  get '/admin/applications/:id', to: 'admin_applications#show'
  
  patch '/admin/applications/:id/pets/:pet_id/approve', to: 'admin_applications#approve'
  patch '/admin/applications/:id/pets/:pet_id/reject', to: 'admin_applications#reject'

  # get '/admin/applications/:id/approve', to: 'admin_applications#approve'
  # post '/admin/applications/:id', to: 'admin_applications#approve'
  # get '/admin/applications/:id/reject', to: 'admin_applications#reject'
  # post '/admin/applications/:id', to: 'admin_applications#reject'

  # get '/admin/shelters/new', to: 'shelters#new'
  # get '/admin/shelters/:id', to: 'shelters#show'
  # post '/admin/shelters', to: 'shelters#create'
  # get '/admin/shelters/:id/edit', to: 'shelters#edit'
  # patch '/admin/shelters/:id', to: 'shelters#update'
  # delete '/admin/shelters/:id', to: 'shelters#destroy'

end
