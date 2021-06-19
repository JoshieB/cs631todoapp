class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.references :todo_list, null: false, foreign_key: true
      t.text :title
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
