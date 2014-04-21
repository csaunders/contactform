Rails.application.routes.draw do
  namespace :admin do
    resources :contact_requests, only: [:index, :show] do
      member do
        post '/:id/read' => 'contact_request#mark_read', as: :mark_read
      end
    end
  end
  post '/contact' => 'contact_request#create', as: :contact

  match '*path' => 'application#index', as: :catchall, via: [:get, :post]
  root 'application#index'
end
