# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :topic
  belongs_to :user
end
