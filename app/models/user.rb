# frozen_string_literal: true

class User < ApplicationRecord
  # Include devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable,
         :trackable

  acts_as_taggable

  has_one :user_profile, dependent: :destroy
  has_one :address, through: :user_profile
end
