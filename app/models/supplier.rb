# frozen_string_literal: true
class Supplier < ApplicationRecord
  has_one :account, dependent: :destroy
  has_many :parts, dependent: :destroy

  include CnpjHelper
  validates :cnpj, presence: true,  uniqueness: true, length: { is: 14 }, format: { with: /\d{14}/ }
  validate :formatted_cnpj

end
