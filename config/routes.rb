Rails.application.routes.draw do
  devise_for :users
  resources :teams do
    resources :foods, only: [:new, :create]
    resources :messages, only: [:create]
  end
  resources :foods, only: [:edit, :update, :destroy]
  resources :users
  resources :user_teams, only: [:create]

  get '/users/:id/pictures', to: "users#pictures", as: :pictures
  patch '/users/:id/pictures', to: "users#pictures_update", as: :pictures_update

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'


  post '/teams/:id/preview' => 'messages#preview', as: :message_preview

  post '/teams/:id/cityharvest' => 'messages#create_city_harvest', as: :message_city_harvest

  get '/leaderboard' => 'teams#leaderboard', as: :leaderboard

  #static controller routest for help page and about page
  get '/about' => 'static#about', as: :about

  get '/help' => 'static#help', as: :help
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
