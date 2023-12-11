# frozen_string_literal: true

# class Api::ReportBooksController
class Api::ReportBooksController < ApplicationController
  def index
    @books = Book.all
    # Condição para pesquisa de filtros de Suppliers
    return unless params[:filter_by].present? && params[:query].present?

    case params[:filter_by]
    when 'title'
      @books = @books.where('title ILIKE ?', "%#{params[:query]}%")
    when 'isbn'
      @books = @books.where('isbn ILIKE ?', "%#{params[:query]}%")
    else
      render json: { error: 'Filtro invalido' }, status: 422
    end
    render json: @books, status: 200
  end
end
