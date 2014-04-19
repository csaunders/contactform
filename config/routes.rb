Rails.application.routes.draw do
  post '/contact' => 'contact_request#create', as: :contact

  match '*path' => 'application#index', as: :catchall, via: [:get, :post]
  root 'application#index'
end
