# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments
end
