# frozen_string_literal: true
require 'cpf_cnpj'
module CnpjHelper
  def valid_cnpj?(cnpj)
    CNPJ.valid?(cnpj)
  end

  def formatted_cnpj
    CNPJ.new(cnpj).formatted if cnpj.present?
  end
end
