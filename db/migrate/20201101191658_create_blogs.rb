class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :name, limit: 35
      t.string :description
      t.text :body

      t.timestamps
    end
  end
end
