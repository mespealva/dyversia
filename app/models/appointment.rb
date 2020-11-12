class Appointment < ApplicationRecord
    has_and_belongs_to_many :users, through: :appointments_users
end
