# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]

  # GET /books or /books.json
  def index
    @books = Book.all

    if params[:filter_by].present? && params[:query].present?
      case params[:filter_by]
      when 'title'
        @books = @books.where('title LIKE ?', "%#{params[:query]}%")
      when 'author_name'
        @books = @books.joins(:author).where('authors.name LIKE ?', "%#{params[:query]}%")
      end
    end

    @pagy, @books = pagy(@books, items: 5)

    render :index
  end

  # GET /books/1 or /books/1.json
  def show; end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit; end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_url, notice: 'Book was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    if @book.update(book_params)
      redirect_to books_url, notice: 'Book was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = Book.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def book_params
    params.require(:book).permit(:title, :author_id, :isbn, :assembly_id)
  end
end
