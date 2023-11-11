# frozen_string_literal: true

require 'cpf_cnpj'
module CpfHelper
  def valid_cpf?(cpf)
    CPF.valid?(cpf)
  end

  def validade_cpf
    errors.add(:cpf, 'CPF inválido') unless valid_cpf?(cpf)
  end

  def formatted_cpf
    CPF.new(cpf).formatted if cpf.present?
  end
end
