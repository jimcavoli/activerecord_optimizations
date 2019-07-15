# frozen_string_literal: true

class User < ApplicationRecord
  # Include devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable,
         :trackable

  has_one :user_profile
end
