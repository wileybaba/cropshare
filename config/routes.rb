Rails.application.routes.draw do
  devise_for :users
  resources :shares
  resources :locations, except: [:update, :edit, :destroy]
  # :only => [:index, :create, :edit, :update]
  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/faqs', to: 'static_pages#faqs'
  get '/terms_and_conditions', to: 'static_pages#terms_and_conditions'
  get '/privacy_policy', to: 'static_pages#privacy_policy'
  get '/share_policy', to: 'static_pages#share_policy'
  get '/customer_care', to: 'static_pages#customer_care'
  get '/press', to: 'static_pages#press'



end
