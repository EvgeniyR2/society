# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text, null: false, default: ''
      t.references :topic, foreign_key: true, null: false, index: true
      t.references :user, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
