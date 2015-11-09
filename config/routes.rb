Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#angular'

  #Api
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :update, :destroy]
      get 'users/:id/appointments' => 'appointments#index'
      post 'business/:id/appointments' => 'appointments#create'
      put 'business/:id/appointments/:id/mark_inactive' => 'appointments#mark_inactive'
      put 'business/:id/appointments/:id/mark_done' => 'appointments#mark_done'
      put 'business/:id/appointments/:id/move_up' => 'appointments#move_up'
      put 'business/:id/appointments/:id/move_up' => 'appointments#move_down'
      get 'business/:id/wait_time' => 'business#wait_time'
      put 'business/:id/add_delay_time' => 'business#add_delay_time'
      put 'business/:id/decrease_delay_time' => 'business#decrease_delay_time'
      get 'business' => 'business#index'
      resources :appointments, only: [:index, :create, :show, :update, :destroy]
    end
  end
=begin
 routes to add
-GET user/:id/appointments  =>  'api::v1::appointments#index'
-POST business/:id/appointments => 'api::v1::appointments#create'
-PUT business/:id/appointments/:id => 'api::v1::appointments#mark_inactive'
-PUT business/:id/appointments/:id/mark_done => 'api::v1::appointments#mark_done'
-PUT business/:id/appointments/:id/move_up => 'api::v1::appointments#move_up'
-PUT business/:id/appointments/:id/move_up => 'api::v1::appointments#move_down'
-GET business/:id/waittime => 'api::v1::business#wait_time'
-PUT business/:id/add_delay_time => 'api::v1::business#add_delay_time'
-PUT business/:id/decrease_delay_time => 'api::v1::business#decrease_delay_time'

controllers to add 
appointments index, create, mark_inactive, mark_done, move_up, move_down, 
business waittime, add_delay_time, decrease_delay_time, index (just names), 



=end
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
