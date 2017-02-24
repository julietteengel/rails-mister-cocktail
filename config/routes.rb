Rails.application.routes.draw do
root 'cocktails#index'
  resources :cocktails, only: [ :index, :show, :create, :new, :update ] do
    resources :doses, only: [ :new, :create, :destroy ]

  end
  mount Attachinary::Engine => "/attachinary"
end


#          Prefix Verb   URI Pattern                     Controller#Action
#     restaurants GET    /restaurants(.:format)          restaurants#index
#                 POST   /restaurants(.:format)          restaurants#create
#  new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#      restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                 PATCH  /restaurants/:id(.:format)      restaurants#update
#                 DELETE /restaurants/:id(.:format)      restaurants#destroy



