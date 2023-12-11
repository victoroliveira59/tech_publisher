# frozen_string_literal: true

class Api::ReportsSuppliersController < ApplicationController
  # Filtro para Gerar Relatório de Fornecedor individual e de todos
  def index
    @suppliers = Supplier.all
    # Condição para pesquisa de filtros de Suppliers
    return unless params[:filter_by].present? && params[:query].present?

    case params[:filter_by]
    when 'name'
      @suppliers = @suppliers.where('name LIKE ?', "%#{params[:query]}%")
    else
      render json: { error: 'Filtro inválido' }, status: 422
    end

    render json: @suppliers, status: 200
  end
end
