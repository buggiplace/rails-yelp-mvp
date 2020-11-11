class Review < ApplicationRecord
  belongs_to :restaurant# @review.restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end

# When a restaurant is destroyed, all of its reviews must be destroyed as well.
