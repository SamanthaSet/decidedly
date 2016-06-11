Rails.application.routes.draw do

  root "decisions#index"

  # Routes for the Rating resource:
  # CREATE
  get "/ratings/new", :controller => "ratings", :action => "new"
  post "/create_rating", :controller => "ratings", :action => "create"

  # READ
  get "/ratings", :controller => "ratings", :action => "index"
  get "/ratings/:id", :controller => "ratings", :action => "show"

  # UPDATE
  get "/ratings/:id/edit", :controller => "ratings", :action => "edit"
  post "/update_rating/:id", :controller => "ratings", :action => "update"

  # DELETE
  get "/delete_rating/:id", :controller => "ratings", :action => "destroy"
  #------------------------------

  # Routes for the Factor resource:
  # CREATE
  get "/factors/new", :controller => "factors", :action => "new"
  post "/create_factor", :controller => "factors", :action => "create"

  # READ
  get "/factors", :controller => "factors", :action => "index"
  get "/factors/:id", :controller => "factors", :action => "show"

  # UPDATE
  get "/factors/:id/edit", :controller => "factors", :action => "edit"
  post "/update_factor/:id", :controller => "factors", :action => "update"

  # DELETE
  get "/delete_factor/:id", :controller => "factors", :action => "destroy"
  #------------------------------

  # Routes for the Choice resource:
  # CREATE
  get "/choices/new", :controller => "choices", :action => "new"
  post "/create_choice", :controller => "choices", :action => "create"

  # READ
  get "/choices", :controller => "choices", :action => "index"
  get "/choices/:id", :controller => "choices", :action => "show"

  # UPDATE
  get "/choices/:id/edit", :controller => "choices", :action => "edit"
  post "/update_choice/:id", :controller => "choices", :action => "update"

  # DELETE
  get "/delete_choice/:id", :controller => "choices", :action => "destroy"
  #------------------------------

  # Routes for the Decision resource:

  # CREATE
  get "/decisions/new", :controller => "decisions", :action => "new"
  post "/create_decision", :controller => "decisions", :action => "create"

  # READ
  get "/decisions", :controller => "decisions", :action => "index"
  get "/decisions/result/:id", :controller => "decisions", :action => "result"
  get "/decisions/:id", :controller => "decisions", :action => "show"

  # UPDATE
  get "/decisions/:id/edit", :controller => "decisions", :action => "edit"
  post "/update_decision/:id", :controller => "decisions", :action => "update"

  # DELETE
  get "/delete_decision/:id", :controller => "decisions", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
