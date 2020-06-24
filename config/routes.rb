Rails.application.routes.draw do


 resources :artists
 resources :genres
 resources :songs


#   get 'songs/index'

#   get 'songs/show'

#   get 'songs/new'

#   get 'songs/create'

#   get 'songs/update'

#   get 'songs/edit'

#   get 'genres/index'
#   get '/genres/new', to: 'genres#create'
#   get '/genres/:id' , to: 'genres#show'

#   get 'genres/show'

#   get 'genres/new'

#   get 'genres/create'

#   get 'genres/update'

#   get 'genres/edit'

#   get 'artists/index'
#   get '/artists/new', to: 'artists#new'
# get '/artists/:id' , to: 'artists#show'

#   get 'artists/show'

#   get 'artists/new'

#   get 'artists/create'

#   get 'artists/update'

#   get 'artists/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
