# frozen_string_literal: true

class UsersController < ApplicationController
  def simple
    @users = User.all
  end

  def find_each
    @users = User.all.find_each
    render 'users/simple'
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
  end
end
