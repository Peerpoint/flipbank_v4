Rails.application.routes.draw do
  resources :posts
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
    
    get 'practice_app1', to: 'pages#practice_app1'
    
    get 'practice_app2', to: 'pages#practice_app2'
    
    get 'show', to: 'pages#show'
    
    get 'show2', to: 'pages#show2'
    
    get 'kc_2', to: 'pages#kc_2'
    
    get 'kc_3', to: 'pages#kc_3'
    
    get 'kc_4', to: 'pages#kc_4'
    
    get 'kc_5', to: 'pages#kc_5'
    
    get 'kc_6', to: 'pages#kc_6'
    
    get 'kc_7', to: 'pages#kc_7'
    
    get 'kc_8', to: 'pages#kc_8'
    
    get 'kc_9', to: 'pages#kc_9'
    
    get 'kc_10', to: 'pages#kc_10'
    
    get 'prod_1', to: 'pages#prod_1'
    
    get 'prod_2', to: 'pages#prod_2'
    
    get 'prod_3', to: 'pages#prod_3'
    
    get 'prod_4', to: 'pages#prod_4'
    
    get 'marketplace', to: 'pages#marketplace'
    
    get 'investors', to: 'pages#investors'
    
    get 'listings', to: 'pages#listings'
    
    get 'analyzer', to: 'pages#analyzer'
    
    get 'dashboard', to: 'pages#dashboard'
    
    resources :contacts, only: :create
end
