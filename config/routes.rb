Rails.application.routes.draw do
 namespace 'api' do
  namespace 'v1' do
    resources :appointments
    resources :comments
    resources :galleries
    resources :gallery_categories
    resources :hair_cards
    resources :messages
    resources :posts
    resources :product_categories
    resources :products
    resources :profiles
    resources :salons
    resources :services
    resources :stylist_infos
    resources :users

    post '/login', to: 'auth#login'
    get '/profile', to: 'auth#profile'
  end
 end
end
