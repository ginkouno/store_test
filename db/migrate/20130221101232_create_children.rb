class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.integer :parent_id
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
