class Api::ReportsAuthorsController < ApplicationController
  def index
    @authors = Author.all
    # Condição para pesquisa de filtros de Suppliers
    return unless params[:filter_by].present? && params[:query].present?

    case params[:filter_by]
    when 'name'
      @authors = @authors.where('name LIKE ?', "%#{params[:query]}%")
    else
      render json: { error: 'Filtro inválido' }, status: 422
    end
    render json: @authors, status: 200
  end
end
