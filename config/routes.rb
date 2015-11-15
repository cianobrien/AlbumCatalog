Rails.application.routes.draw do

  resources :followships

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users

  resources :line_items

  resources :profiles

  get 'menu/browse'

  resources :albums

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root :to => 'menu#browse', :as => 'Catalogue'

  # Example of regular route:
  #   get 'albums/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: album.id)
  #   get 'albums/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :albums

  # Example resource route with options:
  #   resources :albums do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :albums do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :albums do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/albums/* to Admin::albumsController
  #     # (app/controllers/admin/albums_controller.rb)
  #     resources :albums
  #   end
end
