# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  # MVP resource
  resources :resumes, except: %i[new edit]

  # 'stretch' resources
  resources :sections, except: %i[new edit]
  resources :layouts, except: %i[new edit]
  resources :section_layouts, except: %i[new edit]

  get '/templates' => 'templates#index'
  get '/templates/:id' => 'templates#show'

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  get '/pub/:user_id/:layout_name' => 'published#show'
end
