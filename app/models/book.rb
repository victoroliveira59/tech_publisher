class Book < ApplicationRecord
  belongs_to :author
  belongs_to :assembly

  include IsbnHelper
  validates :isbn, presence: true
  validate :validate_isbn
end
