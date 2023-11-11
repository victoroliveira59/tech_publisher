# frozen_string_literal: true
class Supplier < ApplicationRecord
  has_one :account, dependent: :destroy
  has_many :parts, dependent: :destroy

  include CnpjHelper
  validates :cnpj, presence: true, length: { is: 14 }, format: { with: /\d{14}/ }
  validate :validade_cnpj
  validate :formatted_cnpj
end
