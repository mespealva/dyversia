class AddColumnToHorario < ActiveRecord::Migration[5.2]
  def change
    add_column :horarios, :available, :boolean
  end
end
