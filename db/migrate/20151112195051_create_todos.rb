class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :task

      t.timestamps null: false
    end
  end
end
