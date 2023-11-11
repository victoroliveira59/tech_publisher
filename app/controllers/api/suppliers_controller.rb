class Api::SuppliersController < ApplicationController
  before_action :set_supplier, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /suppliers
  def index
    @suppliers = Supplier.all
    render json: @suppliers
  end

  # GET /suppliers/1
  def show
    render json: @supplier
  end

  # GET /suppliers/new
  def new
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit
  end

  # POST /suppliers
  def create
    @supplier = Supplier.new(supplier_params)

    if @supplier.save
      render json: @supplier, status: :created
    else
      render json: @supplier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /suppliers/1
  def update
    if @supplier.update(supplier_params)
      render json: @supplier, status: :ok
    else
      render json: @supplier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /suppliers/1
  def destroy
    @supplier.destroy
    head :no_content
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_supplier
    @supplier = Supplier.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def supplier_params
    params.require(:supplier).permit(:name)
  end
end
