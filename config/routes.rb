ElevatorApp::Application.routes.draw do
  resources :app_incomes

  resources :app_batches
  
  resources :app_seasons

  devise_for :core_user

  namespace :admin do
    resources :core_users # Have the admin manage them here.
  end

  resources :conf_properties

  resources :app_contracts

  resources :app_suppliers

  resources :app_laborants

  resources :core_users

  resources :core_delegations

  resources :core_privileges

  resources :core_roles

  resources :core_actions

  resources :core_modules

  resources :core_user_session

  get "basises/home"

  get "basises/dashboard"

  get "basises/about"

  get "basises/menu"

  get "home/index"
  
  get "manager/default"
  
  get "manager/suppliers"
  
  get "manager/contracts"
  
  get "manager/seasons"
  
  get "lab/batches"
  
  get "admin/users"
  
  get "admin/delegations"
  
  get "admin/audit"
  
  get "admin/recyclebin"
  
  get "admin/database"
  
  get "core_user/registration"
  
  match '/dashboard', :to => 'basises#dashboard'
  match '/basises', :to => 'basises#dashboard'
  match '/about', :to => 'basises#about'
  match '/manager', :to => 'manager#default'
  match '/admin', :to => 'admin#users'
  match '/lab', :to => 'lab#batches'

#  match '/app_income/:batch_id/new' 
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  match 'app_batches/:id/hide' => 'app_batches#hide', :as => :batch_hide


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
  root :to => "basises#dashboard"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  
end
