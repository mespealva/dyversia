class Tag < ApplicationRecord
    belongs_to :user
    belongs_to :blog
    validates :name, :unique =>  true
end
