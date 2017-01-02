class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.boolean :done
      t.string :comment
      t.date :date_end
      t.integer :priority

      t.timestamps
    end
  end
end
