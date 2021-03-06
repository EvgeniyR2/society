# frozen_string_literal: true

class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :tasks
end
