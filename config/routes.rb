Rails.application.routes.draw do

  root 'homes#index'
  # This should be API namespaced, but unfortunately I ran out of time, so I just made a normal controller and path.
  # namespace :api do
  #    namespace :v1 do
       get "/meetups", to: "meetups#search"
     # end
   # end

  devise_for :users
end
