class Account < ApplicationRecord

  belongs_to :supplier
  validates :bank, presence: true
  validates :number, length: { is: 6 }, uniqueness: true


  include AccountsHelper
end






