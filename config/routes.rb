Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  root 'welcome#index'

  get 'calendar' => 'calendar#current'

  get 'booking'  => 'booking#form'
  post 'booking' => 'booking#submit'

  get 'information/policy'  => 'information#policy'
  get 'information/venue'     => 'information#venue'
  get 'information/promotion' => 'information#promotion'
  get 'information/general'   => 'information#general'

  get 'archive'        => 'archive#index'
  get 'archive/photos' => 'archive#photo'
  get 'archive/flyers' => 'archive#flyer'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
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
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
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
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
