# frozen_string_literal: true

class UsersController < ApplicationController
  def simple
    @users = User.all
  end

  def find_each
    @users = User.all.find_each
    render 'users/simple'
  end
end
