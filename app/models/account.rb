class Account < ApplicationRecord

  belongs_to :supplier
  validates :bank, presence: true
  validates :number, length: { is: 6 }, uniqueness: true


  def self.ransackable_attributes(auth_object = nil)
    ["number"]
  end

  include AccountsHelper
end






