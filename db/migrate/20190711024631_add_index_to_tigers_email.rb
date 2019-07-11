class AddIndexToTigersEmail < ActiveRecord::Migration[6.0]
  def change
    add_index :tigers, :email, unique: true
  end
end
