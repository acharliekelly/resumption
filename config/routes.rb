# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :sections, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  get '/:user/:resume' => 'resumes#show'
end
