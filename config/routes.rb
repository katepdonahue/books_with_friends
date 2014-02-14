FriendsLibrary::Application.routes.draw do
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

    get '/api/books' => 'books#index', :as => 'books'
    post '/api/books' => 'books#create'
    get '/api/books/:id' => 'books#show', :as => 'book'
    put '/api/books/:id' => 'books#update'
    delete '/api/books/:id' => 'books#destroy'

    get '/api/users' => 'users#index', :as => 'users'
    post '/api/users' => 'users#create'
    get '/api/users/:id' => 'users#show', :as => 'user'
    put '/api/users/:id' => 'users#update'
    delete '/api/users/:id' => 'users#destroy'

    get '/api/authors' => 'authors#index', :as => :authors      
    get '/api/authors/:id' => 'authors#show', :as => :author

    get '/api/users/:user_id/books' => 'books#index'

    # get "api", :to => proc { [404, {}, ['Invalid API endpoint']] }
    # get "api/*path", :to => proc { [404, {}, ['Invalid API endpoint']] }

    # match "/*path" => redirect("/?goto=%{path}")

    root :to => 'static_pages#index'

    # resources :users do
    #   resources :books
    #   resources :authors do
    #     resources :books do
    #       resources :reviews
    #     end
    #   end
    # end

    # resources :reviews do
    #   resources :users do
    #     resources :books do
    #       resources :authors
    #     end
    #   end
    # end


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

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
