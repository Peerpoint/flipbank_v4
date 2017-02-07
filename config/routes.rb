Rails.application.routes.draw do
  devise_for :users
    root to: 'pages#home'
    
    get 'about', to: 'pages#about'
    
    get 'careers', to: 'pages#careers'

    get 'privacy', to: 'pages#privacy'
  
    get 'terms', to: 'pages#terms'
  
    get 'knowledge', to: 'pages#knowledge'
    
    get 'products', to: 'pages#products'
    
    get 'blog', to: 'pages#blog'
    
    get 'why_flipbank', to: 'pages#why_flipbank'
    
    get 'programs', to: 'pages#programs'
    
    get 'how_it_works', to: 'pages#how_it_works'
    
    get 'partners', to: 'pages#partners'
    
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
    
    get 'practice', to: 'pages#practice'
    
    resources :contacts, only: :create
end
