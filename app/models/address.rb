# frozen_string_literal: true

class Address < ApplicationRecord
  acts_as_taggable

  belongs_to :user_profile
end
