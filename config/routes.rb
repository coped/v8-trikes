Rails.application.routes.draw do
  root 'static_pages#home'

  get  '/about',                to: 'static_pages#about'
  get  '/contact',              to: 'static_pages#contact'

  get  '/galleries/charles',    to: 'static_pages#charles'
  get  '/galleries/tim',        to: 'static_pages#tim'
  get  '/galleries/red-trike',  to: 'static_pages#red_trike'
  get  '/galleries/roth-body',  to: 'static_pages#roth_body'
  get  '/galleries/twin-turbo', to: 'static_pages#twin_turbo'
  get  '/galleries/misc',       to: 'static_pages#misc'
  
  resources :users, only: [:show, :edit, :update]
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
end
