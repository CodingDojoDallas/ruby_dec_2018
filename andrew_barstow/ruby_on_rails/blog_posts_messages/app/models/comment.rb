class Comment < ApplicationRecord
  belongs_to :shade, polymorphic: true
end
