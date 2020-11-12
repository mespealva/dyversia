class CreateHorarios < ActiveRecord::Migration[5.2]
  def change
    create_table :horarios do |t|
      t.references :user, foreign_key: true
      t.date :day
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
