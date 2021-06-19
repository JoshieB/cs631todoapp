class CreateTodoLists < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_lists do |t|
      t.text :title

      t.timestamps
    end
    add_reference :todo_lists, :user, foreign_key: true
  end
end
