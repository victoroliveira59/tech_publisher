# frozen_string_literal: true

module IsbnHelper
  def valid_isbn?(isbn)
    ISBN.valid?(isbn)
  end

  def validate_isbn
    errors.add(:isbn, 'ISBN invalido') unless valid_isbn?(isbn)
  end
end
