# frozen_string_literal: true

class UserProfile < ApplicationRecord
  belongs_to :user
  has_one :address, dependent: :destroy

  validates :name, presence: true
  validates :user, presence: true
end
