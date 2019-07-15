# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get '/simple', to: 'users#simple'
  get '/find_each', to: 'users#find_each'
  get '/pluck', to: 'users#pluck'

  get '/with_profiles', to: 'users#with_profiles'
  get '/with_profiles_included', to: 'users#with_profiles_included'
  get '/profiles_included_from_view', to: 'users#profiles_included_from_view'

  get '/profiles_addresses', to: 'users#profiles_addresses'
  get '/profiles_addresses_explicit', to: 'users#profiles_addresses_explicit'
  get '/profiles_included', to: 'users#profiles_included'
  get '/profiles_addresses_included', to: 'users#profiles_addresses_included'
  get '/profiles_included_revised', to: 'users#profiles_included_revised'
  get '/profiles_addresses_aim_center', to: 'users#profiles_addresses_aim_center'

  get '/polymorphic', to: 'users#polymorphic'
  get '/polymorphic_includes', to: 'users#polymorphic_includes'
  get '/polymorphic_nesting', to: 'users#polymorphic_nesting'
  get '/polymorphic_nesting_includes', to: 'users#polymorphic_nesting_includes'
  get '/polymorphic_nesting_names', to: 'users#polymorphic_nesting_names'

  root to: 'application#index'

  mount ActiveRecordProfiler::Engine, at: 'activerecord_profiler'
  mount PgHero::Engine, at: 'pghero'
end
