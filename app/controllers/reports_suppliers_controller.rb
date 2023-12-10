# frozen_string_literal: true

class ReportsSuppliersController < ApplicationController
  # Filtro para Gerar Relatório de Fornecedor individual e de todos
  def index
    @suppliers = Supplier.all
    # Condição para pesquisa de filtros de Suppliers
    return unless params[:filter_by].present? && params[:query].present?

    case params[:filter_by]
    when 'name'
      @suppliers = @suppliers.where('name LIKE ?', "%#{params[:query]}%")
    else
      render index
    end
  end
end
