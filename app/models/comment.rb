# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :topic
  belongs_to :user
end
