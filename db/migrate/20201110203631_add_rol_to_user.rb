class AddRolToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rol, :integer
  end
end
