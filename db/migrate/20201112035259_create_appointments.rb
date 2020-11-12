class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :desc
      t.date :date
      t.text :acta

      t.timestamps
    end
  end
end
