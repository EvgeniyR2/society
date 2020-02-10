class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :title, null: false, default: ''
      t.text :text, null: false, default: ''
      t.references :user, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
