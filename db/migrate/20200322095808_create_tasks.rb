class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, default: ''
      t.text :text, null: false, default: ''
      t.references :topic, foreign_key: true, null: false, index: true
      t.references :user, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
