class Blog < ApplicationRecord
    has_many :tags, as: :taggable
    has_many_attached :images
end
