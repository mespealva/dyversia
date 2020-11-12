class Blog < ApplicationRecord
    has_many :addtags, as: :taggable
    has_many_attached :images
    belongs_to :user
end
