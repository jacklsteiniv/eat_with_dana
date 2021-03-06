Rails.application.routes.draw do

  # Contact form routing below
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  #END contact

  get 'categories/recipes' => 'categories#recipes'
  get 'categories/food' => 'categories#food'
  get 'categories/lifestyle' => 'categories#lifestyle'

  # Resources have to go below the gets above, otherwise show overrides them.

  resources :categories

  resources :posts

  # Posts are nested in categories - see posts for a specific category, etc.


  # Search results

  get 'static_pages/search-results'

  get 'users/new'

  get 'users/edit'

  get 'users/update'

  get 'static_pages/home'

  get 'static_pages/about_me'

  get 'static_pages/services'

  get 'static_pages/contact'

  get 'users/login'

  root 'static_pages#home'

  resources :sessions, only: [:destroy, :new, :create]


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
