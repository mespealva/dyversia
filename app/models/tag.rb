class Tag < ApplicationRecord
  belongs_to :addtag, as: :taggable, polymorphic: true
end
