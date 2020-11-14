class AddVisibilityToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :visibility, :boolean
  end
end
