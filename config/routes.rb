Rails.application.routes.draw do
  root 'static_pages#home'

  # Static Pages
  get 'membership' => 'static_pages#membership'
  get 'opening-times' => 'static_pages#times'
  get 'contact' => 'static_pages#contact'
  get 'classes' => 'static_pages#classes'
  get 'gym-facilities' => 'static_pages#facilities'

  # Classes
  get 'classes/ab-solution' => 'static_pages#ab_solution'
  get 'classes/bootcamp' => 'static_pages#bootcamp'
  get 'classes/boxing' => 'static_pages#boxing'
  get 'classes/circuit-training' => 'static_pages#circuit_training'
  get 'classes/cycle-fit' => 'static_pages#cycle_fit'
  get 'classes/cycle-pump' => 'static_pages#cycle_pump'
  get 'classes/hiit' => 'static_pages#hiit'
  get 'classes/kettle-x-fit' => 'static_pages#kettle_x_fit'
  get 'classes/lbt' => 'static_pages#lbt'
  get 'classes/mma' => 'static_pages#mma'
  get 'classes/pilates' => 'static_pages#pilates'
  get 'classes/pilates_hiit' => 'static_pages#pilates_hiit'
  get 'classes/pumped' => 'static_pages#pumped'
  get 'classes/rig_assault' => 'static_pages#rig_assault'
  get 'classes/s_and_c' => 'static_pages#s_and_c'
  get 'classes/total_body' => 'static_pages#total_body'
  get 'classes/trx' => 'static_pages#trx'
  get 'classes/ultimate_endurance' => 'static_pages#ultimate_endurance'

  get 'personal-training' => 'static_pages#personal_training'

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
