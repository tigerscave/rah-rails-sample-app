class AddPasswordDigestToTigers < ActiveRecord::Migration[6.0]
  def change
    add_column :tigers, :password_digest, :string
  end
end
