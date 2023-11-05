class Api::SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show update destroy]
  skip_before_action :verify_authenticity_token

  # GET /api/v1/suppliers
  def index
    @suppliers = Supplier.all
    render json: @suppliers
  end

  # GET /api/v1/suppliers/1
  def show
    render json: @supplier
  end

  # POST /api/v1/suppliers
  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      render json: @supplier, status: :created
    else
      render json: @supplier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/suppliers/1
  def update
    if @supplier.update(supplier_params)
      render json: @supplier
    else
      render json: @supplier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/suppliers/1
  def destroy
    @supplier.destroy
    head :no_content
  end

  private

  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:name)
  end
end

