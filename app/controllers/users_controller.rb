# frozen_string_literal: true

class UsersController < ApplicationController
  def simple
    @users = User.all
  end

  def find_each
    @users = User.all.find_each
    render 'users/simple'
  end

  def pluck
    @users = User.all.pluck(:email)
  end

  def with_profiles
    @users = User.all
  end

  def with_profiles_included
    @users = User.all.includes(:user_profile)
    render 'users/with_profiles'
  end

  def profiles_included_from_view
    @users = User.all
    render 'users/profiles_view_includes'
  end

  def with_addresses_explicit
    @users = User.all
    render 'users/with_addresses_explicit'
  end

  def profiles_addresses
    @users = User.all
    render 'users/with_addresses'
  end

  def profiles_included
    @users = User.all.includes(:user_profile)
    render 'users/with_addresses'
  end

  def profiles_addresses_included
    @users = User.all.includes(user_profile: %i[address])
    render 'users/with_addresses'
  end

  def profiles_included_revised
    @users = User.all.includes(:address)
    render 'users/with_addresses'
  end

  def profiles_addresses_explicit
    @users = User.all.includes(user_profile: %i[address])
    render 'users/with_addresses_explicit'
  end

  def profiles_addresses_aim_center
    @user_profiles = UserProfile.all.includes(:user, :address)
    render 'users/with_addresses_from_profile'
  end

  def polymorphic
    @users = User.all
  end

  def polymorphic_includes
    @users = User.all.includes(:tags)
    render 'users/polymorphic'
  end

  def polymorphic_nesting
    @users = User.all.includes(:tags)
  end

  def polymorphic_nesting_includes
    @users = User.all.includes(:tags, user_profile: { address: :tags })
    render 'users/polymorphic_nesting'
  end

  def polymorphic_nesting_names
    @users = User.all.eager_load(:tags, address: :tags)
    render 'users/polymorphic_nesting'
  end
end
