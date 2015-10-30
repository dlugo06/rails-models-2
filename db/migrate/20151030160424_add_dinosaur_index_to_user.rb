class AddDinosaurIndexToUser < ActiveRecord::Migration
  def change
    # add_column :users, :dinosaur, :string
    add_index :users, :dinosaur
  end
end
