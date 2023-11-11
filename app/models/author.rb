class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  include CpfHelper

  validates :cpf, presence: true, length: { is: 11 }, format: { with: /\d{11}/ }
  validate :validade_cpf
  validate :formatted_cpf
end
