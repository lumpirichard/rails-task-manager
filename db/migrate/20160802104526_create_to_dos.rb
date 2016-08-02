class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
