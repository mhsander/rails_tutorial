class Book < ApplicationRecord
  validates :title, :author, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 6, message: ' needs to be from 0 to 5'}
end
