# frozen_string_literal: true

class SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show edit update destroy]
  # GET /suppliers or /suppliers.json
  def index
    @suppliers = Supplier.all
    # Condição para pesquisa de filtros de Suppliers
    if params[:filter_by].present? && params[:query].present?
      case params[:filter_by]
      when 'name'
        @suppliers = @suppliers.where("name LIKE ?", "%#{params[:query]}%")
      when 'account_number'
        @suppliers = @suppliers.joins(:account).where("accounts.number LIKE ?", "%#{params[:query]}%")
      when 'author_name'
        @suppliers = @suppliers.joins(parts: { assemblies: { book: :author } }).where("authors.name LIKE ?", "%#{params[:query]}%")
      else
        render index
      end
    end
  end



  # GET /suppliers/1 or /suppliers/1.json
  def show
    @supplier = Supplier.includes(:account).find(params[:id])
  end

  # GET /suppliers/new
  def new
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit; end

  # POST /suppliers or /suppliers.json
  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      redirect_to supplier_url(@supplier), notice: 'Supplier was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /suppliers/1 or /suppliers/1.json
  def update
    if @supplier.update(supplier_params)
      redirect_to supplier_url(@supplier), notice: 'Supplier was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /suppliers/1 or /suppliers/1.json
  def destroy
    @supplier.destroy
      redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def supplier_params
    params.require(:supplier).permit(:name, :cnpj)
  end
end
