# frozen_string_literal: true

Rails.application.routes.draw do
  # BEGIN
  get 'articles/index', as: 'articles_index' 
  get "articles/show", as: 'articles_show'
  root 'home#index'  
  # END
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
