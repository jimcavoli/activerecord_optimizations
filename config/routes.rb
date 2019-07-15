# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get '/simple', to: 'users#simple'
  get '/find_each', to: 'users#find_each'

  root to: 'application#index'
end
