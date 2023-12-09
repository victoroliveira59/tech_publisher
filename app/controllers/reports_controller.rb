# frozen_string_literal: true

class ReportsController < ApplicationController
  def index
    @authors = Author.all
    # Condição para pesquisa de filtros de Suppliers
    return unless params[:filter_by].present? && params[:query].present?

    case params[:filter_by]
    when 'name'
      @authors = @authors.where('name LIKE ?', "%#{params[:query]}%")
    else
      render index
    end
  end
end
