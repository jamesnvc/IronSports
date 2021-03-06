UofTIronSports::Application.routes.draw do

  ActiveAdmin.routes(self)

  resources :posts

  devise_for :users
  match 'users/:id' => 'users#show', as: 'user'

  root to: redirect("/posts")

  for page in %w(leaderboard oly_leaderboard results pl_results oly_results) do
    match page => 'pages#show_special', name: page, as: page
  end

  match 'resources' => redirect('http://uoftironsports.wordpress.com/resources')
  match 'members' => redirect('http://uoftironsports.wordpress.com/members')
  match 'trainingday' => redirect('https://docs.google.com/forms/d/1a272m0nj7vFEJtUW8Txrj_FqsmG-V5wXeO_T4ewcyFA/viewform')

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  get '/:name', to: 'pages#show'

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
