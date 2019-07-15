# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get '/simple', to: 'users#simple'
  get '/find_each', to: 'users#find_each'
  get '/with_profiles', to: 'users#with_profiles'
  get '/with_profiles_included', to: 'users#with_profiles_included'
  get '/profiles_included_from_view', to: 'users#profiles_included_from_view'

  root to: 'application#index'

  mount ActiveRecordProfiler::Engine, at: 'activerecord_profiler'
  mount PgHero::Engine, at: 'pghero'
end
