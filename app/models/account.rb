class Account < ApplicationRecord

  belongs_to :supplier
  validates :bank, presence: true
  validates :number, length: { is: 6 }

  include AccountsHelper

  validates :digit, presence: true, format: { with: /[0-9a-p]/ }
  validate :validate_digit

  private

  def validate_digit
    calculated_digit = calculate_dv(number, digit)
    if calculated_digit != 'digit is valid'
      errors.add(:digit, 'digit invalid')
    end
  end
end
