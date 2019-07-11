class AddIndexToTigersName < ActiveRecord::Migration[6.0]
  def change
    add_index :tigers, :name, unique: true
  end
end
