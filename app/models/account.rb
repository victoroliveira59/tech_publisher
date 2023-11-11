class Account < ApplicationRecord
  belongs_to :supplier
  validates :number, presence: true, numericality: {greater_than: 5}
  validates :bank, presence: true
end
