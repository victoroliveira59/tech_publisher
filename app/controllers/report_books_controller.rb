# frozen_string_literal: true

class ReportBooksController < ApplicationController
  # Fitro para gerar relatório individual e geral
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
      render index
    end
  end
end
