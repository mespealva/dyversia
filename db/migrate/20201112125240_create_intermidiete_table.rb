class CreateIntermidieteTable < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments_users do |t|
      t.references :user, foreign_key: true
      t.references :appointment, foreign_key: true
    end
  end
end
