class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
