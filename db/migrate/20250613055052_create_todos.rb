class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.boolean :completed, default: false
      t.references :user, null: false, foreign_key: true
      t.integer :priority
      t.datetime :due_date

      t.timestamps
    end
  end
end
