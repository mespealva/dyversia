class AddArrayToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :tags, :string, array: true, default: []
  end
end
