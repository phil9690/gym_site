Rails.application.routes.draw do

  # Admin backend
  namespace :backend do
    #get '', to: 'dashboard#index', as: '/'
    resources :users do
      resources :appointments
    end
    resources :customers do
      resources :appointments
    end
    resources :appointments

  end
  
  get 'backend/blowouts' => 'backend/customers#blowout'
  get 'backend/conversions' => 'backend/customers#conversion'

  get    'login'   => 'backend/sessions#new'
  post   'login'   => 'backend/sessions#create'
  delete 'logout'  => 'backend/sessions#destroy'

  get 'backend/email-merge' => 'backend/customers#email_merge'

  get 'export-mobile', to: 'backend/customers#export_mobile', as: :backend_customers_export_mobile

  get 'export-email', to: 'backend/customers#export_email', as: :backend_customers_export_email
  
  root 'static_pages#home'

  get 'membership' => 'static_pages#membership'
  get 'opening-times' => 'static_pages#times'
  get 'contact' => 'static_pages#contact'
  get 'classes' => 'static_pages#classes'
  get 'gym-facilities' => 'static_pages#facilities'
  get 'classes/boxing' => 'static_pages#boxing'
  get 'new-gym' => 'static_pages#new_gym'

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
