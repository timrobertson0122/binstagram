Rails.application.routes.draw do

devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }
get 'photos' => 'photos#index'
root to: 'photos#index'

resources :photos do
  member do
    post 'like'
  end
  resources :comments
end

devise_scope :user do
  resources :users
end

end
